import asyncio
from g4f.client import Client
import json

# Create a client instance
client = Client()

def get_response(message):
    response = client.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user", "content": message}]
    )
    return response.choices[0].message.content

def lambda_handler(event, context):
    # Extract the message depending on the event type
    if isinstance(event, str):
        # Assume it's a JSON string when invoked via function URL
        event = json.loads(event)
    elif 'body' in event:
        # Handle the case where the event contains a body (HTTP POST)
        event = json.loads(event['body'])
    
    message = event.get('message', '')

    # Run the response generation
    result = get_response(message)

    # Return the result
    return {
        'statusCode': 200,
        'body': json.dumps({'response': result})
    }
