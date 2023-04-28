const postForm = document.getElementById('post-form');
const titleInput = document.getElementById('title-input');
const authorInput = document.getElementById('author-input');
const contentInput = document.getElementById('content-input');
const postList = document.getElementById('post-list');
const postTitle = document.getElementById('post-title');
const postAuthor = document.getElementById('post-author');
const postContent = document.getElementById('post-content');
const postDetails = document.getElementById('post-details');

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

postList.addEventListener('click', (event) => {
  const target = event.target;
  if ((target.tagName === 'LI') {
      const postId = target.dataset.id;
      showPostDetails(postId);
      }
      });

      function updatePostList() {
      postList.innerHTML = '';
      for (let i = 0; i < posts.length; i++) {
      const post = posts[i];
      const listItem = document.createElement('li');
      listItem.textContent = post.title;
      listItem.dataset.id = i;
      postList.appendChild(listItem);
      }
      }

      function showPostDetails(postId) {
      const post = posts[postId];
      if (post) {
      postTitle.textContent = post.title;
      postAuthor.textContent = 작성자: ${post.author};
      postContent.textContent = post.content;
      postDetails.style.display = 'block';
      }
      }
