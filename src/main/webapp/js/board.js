const postForm = document.getElementById('post-form');
const titleInput = document.getElementById('title-input');
const authorInput = document.getElementById('author-input');
const contentInput = document.getElementById('content-input');
const postList = document.getElementById('post-list');

let posts = [];

postForm.addEventListener('submit', (event) => {
  event.preventDefault();
  const title = titleInput.value;
  const author = authorInput.value;
  const content = contentInput.value;
  if (title && author && content) {
    const post = { title, author, content };
    posts.push(post);
    updatePostList();
    titleInput.value = '';
    authorInput.value = '';
    contentInput.value = '';
  }
});

function updatePostList() {
  postList.innerHTML = '';
  posts.forEach((post) => {
    const li = document.createElement('li');
    li.innerHTML = `
      <h3>${post.title}</h3>
      <p>${post.author}</p>
      <p>${post.content}</p>
    `;
    postList.appendChild(li);
  });
}

window.addEventListener('load', () => {
  updatePostList();
});
