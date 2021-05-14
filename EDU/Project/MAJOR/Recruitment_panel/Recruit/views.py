from django.http import HttpResponse
from django.shortcuts import render, redirect
from Recruit.forms import requirement_statisticsForm
from django.contrib import messages
from django.contrib.sessions.middleware import SessionMiddleware
from itertools import chain
from Recruitment_panel import settings
from django.conf import settings
from django.core.files.storage import FileSystemStorage
# admin table
from Recruit.models import requirement_statistics
# jobseeker table
from datetime import date
from Recruit.models import jobseeker_registration,jobseeker_p_details,jobseeker_a_details,document_details,recruit_experience,application_hit,progress_report,ischedule
from pymsgbox import *
import random
#||||||||||||||||||||||||||||||||||||||||||||||||||JOBSEEKER START|||||||||||||||||||||||||||||||||||||||||||||

def entry(request):#ENTRY POINT 
    return render(request, 'index.html')

def jobseekerRegistration(request):#NAV
    return render(request,'jobseekerRegistration.html')

def applicationsubmit(request):#NAV
    return render(request,'applicationsubmited.html')


def status(request, userName):
    if request.session['userName']:
        uname = request.session['userName']
        post = progress_report.objects.get(username = userName)
        post = progress_report.objects.raw('SELECT * FROM progress_report WHERE username = %s', [uname])
        return render(request, 'status.html',{'userName':uname, 'post':post})
    else:
        return render(request,'index.html')

def jobseekerRegi(request):
    if request.method == "POST":
        userName = request.POST['userName']
        email = request.POST['email']
        password = request.POST['password1']
        confirm_password = request.POST['password2']
        old_userName = jobseeker_registration.objects.all()
        flag = 0

        for x in old_userName:
            if userName == x.userName:
                print('Username exist')
                flag = 1;
                alert(text='User name found', title='User name exist', button='OK')
                break
            else:
                alert(text='here me', title='no',  button='ok')
                panshingh = jobseeker_registration(userName, email, password, confirm_password)
       

        if flag == 1:
            print('not save')
            return redirect(jobseekerRegistration)
        else:
            alert(text='Done!', title='Resgisteration', button='OK')
            panshingh.save()
    return render(request, 'index.html')

def logincheck(request):
        if request.method == 'POST':
            userName = request.POST['username']
            password1 = request.POST['password']
            flag = 0
            old_userName = jobseeker_registration.objects.all()
            for x in old_userName:
                if userName == x.userName and password1 == x.password :
                    request.session['userName'] = userName
                    return render(request,'jobseekerhome.html',{'userName':userName})
                else:
                    flag = 1
            if flag == 1:
                # messages.error("Inavlid ID")
                return render(request,'index.html')
                    
    

def jobseekerhome(request):
    if request.session['userName']:
        uname = request.session['userName']
        return render(request, 'jobseekerhome.html',{'userName':uname})
    else:
        return render(request,'index.html')
    

def post(request):
    if request.session['userName']:
        uname = request.session['userName']
        post = requirement_statistics.objects.all()
        return render(request, 'Reuirment.html',{'userName':uname, 'post':post})
    else:
        return render(request,'index.html')

def newapplication(request, id):
    emp = requirement_statistics.objects.get(id = id)
    emp2 = requirement_statistics.objects.all()
    return render(request, 'New Application.html',{'emp':emp, 'emp2':emp2})

# def about(request):
    return render(request,'About.html',{'userName':userName})

def forgot(request):
    return render(request, 'forgotpass.html')

def dashboard(request):
    return render(request,'Dashboard.html')

def createApplication(request):
    if request.session['userName']:
        if request.method == "POST":
            apl_id = random.randint(1,200000)
            uname = request.session['userName']
            fName  = request.POST['fName']
            mName  = request.POST['mName']
            lName  = request.POST['lName']
            contact = request.POST['contact']
            gender = request.POST['gender']
            dob = request.POST['dob']
            state = request.POST['state']
            district = request.POST['jilha']
            ta = request.POST['tahashil']
            city = request.POST['city']
            pin = request.POST['pin']

            today = date.today()
            print(today)
            personalDetails = jobseeker_p_details(apl_id,uname,fName,mName,lName,contact,gender,dob,state,district,ta,city,pin,today)

            # Education Details
            branch = request.POST['branch']
            degree = request.POST['degree']
            uni = request.POST['uni']
            institute = request.POST['institute']
            status = request.POST['status']
            sem = request.POST['sem']
            cpi = request.POST['CPI_Percentages']
            experience = request.POST['experience']
            edu_details = jobseeker_a_details(apl_id,branch,degree,uni,institute,status,sem,cpi,experience)

            # Experience Details
            moe = request.POST['monthsOfExperience']
            com = request.POST['Company']
            design = request.POST['designation']
            leave = request.POST['leave']
            ex_details = recruit_experience(apl_id,moe,com,design,leave)

            # documents details
            if request.method == "POST" and request.FILES['aadharcard']:
                aadhar = request.FILES['aadharcard']
                photo = request.FILES['photo']
                signature = request.FILES['signature']
                resume = request.FILES['resume']

                fs1 = FileSystemStorage()
                fs2 = FileSystemStorage()
                fs3 = FileSystemStorage()
                fs4 = FileSystemStorage()

                fileName1 = fs1.save(aadhar.name, aadhar)
                fileName2 = fs1.save(photo.name, photo)
                fileName3 = fs1.save(signature.name, signature)
                fileName4 = fs1.save(resume.name, resume)
                
                url1 = fs1.url(fileName1)
                url2 = fs1.url(fileName2)
                url3 = fs1.url(fileName3)
                url4 = fs1.url(fileName4)

                documents = document_details(
                    j_id = apl_id,
                    aadhar = url1,
                    photo = url2,
                    signature = url3,
                    resume = url4
                 )

                documents.save()

            # Application Details
            post_id = request.POST['post_id']
            post_name = request.POST['post_name'] 
            applicationdetails = application_hit(apl_id,uname,post_id,post_name,today)

            # progress Report
            level = 35
            progress = progress_report(apl_id, uname, level,today)
           
            personalDetails.save()
            edu_details.save()
            ex_details.save()
            applicationdetails.save()
            progress.save()
            messages.info(request,'Your application has been successfully Submitted')

            applicationview = document_details.objects.all()
            pdet = jobseeker_p_details.objects.all()
    return render(request, 'applicationsubmited.html', {'uploaddoc':applicationview, 'pdet':pdet})

def about(request):
    if request.session['userName']:
        uname = request.session['userName']
        return render(request, 'About.html',{'userName':uname})
    else:
        return render(request,'index.html')  


def logout(request):
    if request.session['userName']:
        request.session.flush()
        return render(request, 'index.html')
    else:
        return render(request,'Reuirment.html')

# ||||||||||||||||||||||||||||||||||||JOBSEEKER END|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

# ||||||||||||||||||||||||||||||||||||ADMIN START||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||

# NAVIGATION
def adminHome(request):#NAV
    return render(request, 'adminHome.html')

def interviewAnalysis(request):
    apl = application_hit.objects.all()
    # emp2 =  requirement_statistics.objects.all()
    emp2 = requirement_statistics.objects.raw('SELECT DISTINCT id,post_name FROM requirement_statistics')
    return render(request, 'InterviewAnalysis.html',{'apl':apl, 'emp2':emp2})

def newPost(request):#NAV
    r=random.randint(1,10000)
    print(r)
    return render(request, 'newPost.html',{'id':r})

def ad007(request): #ADMIN REGISTRATION PAGE
    return render(request, 'adminRegistraion.html')

def report(request):
    return render(request, 'Reports.html')

# INSERT POST INFORMATION DATABASE
def postinput(request): 
    if request.method == "POST":
                ID = request.POST['id1']
                postName1 = request.POST['postName']
                vacancies1 = request.POST['vacancies']
                description = request.POST['description']
                minsalary1 = request.POST['minsalary']
                maxsalary1 = request.POST['maxsalary']
                qual1 = request.POST['qual']
                p = requirement_statistics( ID,postName1, vacancies1, description, minsalary1, maxsalary1, qual1)
                p.save()
    return render(request, 'newPost.html', {'msg':"Successfully inserted!"})

# Dashboard for analysis jobseeker data
def dashboard(request):
    return render(request, 'Dashboard.html')

def allapplicatins(request):
    post = application_hit.objects.all()
    return render(request,'allapplications.html',{'post':post})

def schedule(request):
    if request.method == "POST":
                post1 = request.POST['post']
                idate = request.POST['idate']
                sDate = request.POST['sdate']
                eDate = request.POST['edate']
                p = ischedule( post1,idate,sDate,eDate)
                p.save()
    apl = application_hit.objects.all()
    apl2 = ischedule.objects.all()
    emp2 = requirement_statistics.objects.raw('SELECT DISTINCT id,post_name FROM requirement_statistics')
    return render(request, 'InterviewAnalysis.html',{'apl':apl,'apl2':apl2,'emp2':emp2})

def scheduleDelete(request):
    apl = application_hit.objects.all()
    apl2 = ischedule.objects.all().delete()
    emp2 = requirement_statistics.objects.raw('SELECT DISTINCT id,post_name FROM requirement_statistics')
    return render(request, 'InterviewAnalysis.html',{'apl':apl,'apl2':apl2,'emp2':emp2})


def tLetter(request):
    return render(request,'TrainingLetter.html')

def appointmentletter(request):
    
    return render(request, 'appointmentletter.html')
