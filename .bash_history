gcloud storage cp -r gs://qwiklabs-gcp-02-70eb181f9f46-bucket/adk_challenge_lab .
gcloud auth login
export PATH=$PATH:"/home/${USER}/.local/bin"
python3 -m pip install -r adk_challenge_lab/requirements.txt
python3 -m pip install chainlit==2.11.1
gcloud config set project qwiklabs-gcp-02-70eb181f9f46
cd ~/adk_challenge_lab
cat << EOF > .env
GOOGLE_GENAI_USE_VERTEXAI=TRUE
GOOGLE_CLOUD_PROJECT=qwiklabs-gcp-02-70eb181f9f46
GOOGLE_CLOUD_LOCATION=us-central1
RESOURCES_BUCKET=qwiklabs-gcp-02-70eb181f9f46-bucket
MODEL=gemini-2.5-flash
SEARCH_ENGINE_ID=YOUR_ID
EOF

cd ~/adk_challenge_lab
cat << EOF > .env
GOOGLE_GENAI_USE_VERTEXAI=TRUE
GOOGLE_CLOUD_PROJECT=qwiklabs-gcp-02-70eb181f9f46
GOOGLE_CLOUD_LOCATION=us-central1
RESOURCES_BUCKET=qwiklabs-gcp-02-70eb181f9f46-bucket
MODEL=gemini-2.5-flash
SEARCH_ENGINE_ID=paint-search_1786987120740
EOF

cp .env paint_agent/.env
adk run paint_agent
adk web --allow_origins "regex:https://.*\.cloudshell\.dev"
cd ~/adk_challenge_lab
adk deploy agent_engine paint_agent   --display_name "Paint Agent" 
git config --global user.name "AshmitSingh-Developer"
git config --global user.email "ashmit25092001singh@gmail.com"
git config --global user.name "AshmitSingh-Developer"
git config --global user.email "ashmit25092001singh@gmail.com"
git init
git add .
git commit -m "Initial commit from Google Cloud"
git branch -M main
git remote add origin https://github.com/AshmitSingh-Developer/Deploy-an-Agent-with-Agent-Development-Kit
