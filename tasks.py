from invoke import task

@task
def black(context):
	context.run("black --check --diff get.py")

@task
def pylint(context):
	context.run("pylint get.py")

