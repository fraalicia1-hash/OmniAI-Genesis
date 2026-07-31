from agents.manager import choose_agent


def process_message(message):

    agent = choose_agent(message)

    if agent:
        return agent(message)

    return (
        "Bonjour 👋\n"
        "Je suis OmniAI Genesis.\n"
        "Comment puis-je t'aider ?"
    )
