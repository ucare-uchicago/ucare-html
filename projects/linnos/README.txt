
https://docs.google.com/document/d/1O3Uq3XpvR2I6eBEwT1ffvg0Nt28bTIlXGc2PQb15ZkY/edit



Reproducing LinnOS on Chameleon

In all the instructions below, please cc all of the following:
- haryadi@cs.uchicago.edu
- daniar@uchicago.edu

# ==================================================
# GETTING ACCESS TO CHAMELEON
# ==================================================

If you do not have access to Chameleon, please do this:
- Please send me an email from your academic address (not gmail or other public email services) with an email title "Reproducing LinnOS on Chameleon"
- If you're a student, please cc your advisor and ask him/her to reply the email verifying that you are part of his/her research group.
- I also need a website link (an official one under a university domain) of your advisor.

- If you are not able to ssh into Chamelon (e.g. because of your Internet restrictions in your country), we apologize that we cannot support you.


After all of these are done, we can "sponsor" your experiment by adding you to our Chameleon assigned project.  Under this project, you can only use Chameleon for reproducing LinnOS, but not other activities.  In other words, make sure you do not have unnecessarily long reservation time. 




# ==================================================
# REGARDING SUPPORTS FOR LinnOS
# ==================================================

Unfortunately, the students who co-authored LinnOS already graduated, so
you are on your own and we are not able to provide any support.  We
apologize for this.

FYI, LinnOS only got one ACM badge (source code available).  The reviewers
back then failed to reproduce the numbers on Chameleon.  This is because
LinnOS worked on our lab's machine with high-end CPUs and a flash array.
Please see the note below from my recent student about their failure
cases.

Our purpose here is to set an expectation.  We thank you for your interest.

Good luck!


# ==================================================
# EXPERIENCE FROM RECENT STUDENT
# ==================================================


The codes are publicly available by accessing the chameleon link. The code
has the sample traces, the complete pipeline to replay it and to train the
model. However, in order to access the code, they must have a chameleon
account with an ACTIVE project allocation. By default, the Linnos is using
"Chameleon Reproducibility Research", so anyone from outside of our group
MUST change that project name according to the project allocation that
they have.

Only I was able to run the pipeline (a long time ago). I spent a few weeks
consulting with Levent (the student who handles this chameleon deployment)
to solve many problems. It was indeed a bit hard to run.

Then, I asked many other students, but none were successful. They only are
able to run ~10% of the whole pipeline. One of the main problems was the
chameleon developer was updating the jupyter API, thus the current Linnos
code is outdated. I raised this issue a few months ago about updating the
code, but Levent (the one who has the access) and Mingzhe decided not to
do it, since it may take some time and be a bit complicated to do and they
already graduated.
