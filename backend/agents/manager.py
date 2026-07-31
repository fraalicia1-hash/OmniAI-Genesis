from .learn_ai import learn_ai
from .create_ai import create_ai
from .work_ai import work_ai
from .research_ai import research_ai


def choose_agent(message):

    text = message.lower()

    if "apprendre" in text:
        return learn_ai

    if "créer" in text:
        return create_ai

    if "travail" in text:
        return work_ai

    if "recherche" in text:
        return research_ai

    return None
