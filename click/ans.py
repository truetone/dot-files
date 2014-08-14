import click
import subprocess

envs = ['test', 'staging', 'prod', 'api']
subdomains = {'test': 'shepherd', 'prod': 'reaver', 'api': 'bluesun'}


def abort_if_false(ctx, param, value):
    if not value:
        ctx.abort()


def run_cmd(cmd):
    subprocess.call(cmd)


@click.command()
@click.option('--env', prompt='Choose an environment',
              type=click.Choice(envs))
@click.option('--tags', prompt=True)
def init(env, tags):
    cmd = "ansible-playbook -i %s -l %s.sua.umn.edu -t %s -K all.yml" % \
        (env, subdomains[env], tags)

    if tags == 'N':
        cmd = "ansible-playbook -i %s -l %s.sua.umn.edu -K all.yml" % \
            (env, subdomains[env])

    cmd_message = "Running: %s" % cmd
    click.echo(cmd_message)
    click.echo('Success!')

if __name__ == '__main__':
    init()
