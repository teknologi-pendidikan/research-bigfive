<template>
  <v-footer class="pl-10 pt-10">
    <v-row class="footer-container">
      <v-col
        sm="12"
        md="6"
        class="pl-0 pt-0"
      >
        <v-row class="footer-wrapper pl-0">
          <v-col class="footer-heading">
            RISET<br>TEP.
          </v-col>
          <v-col
            cols="12"
            class="pt-0"
          >
            <a
              href="https://github.com/teknologi-pendidikan"
              aria-label="Gå til github"
            >
              <v-icon large>{{ mdiGithub }}</v-icon>
            </a>

            <v-divider
              inset
              vertical
              class="mx-1"
            />

            <a
              href="https://twitter.com/teknotep"
              aria-label="Gå til twitter"
            >
              <v-icon large>{{ mdiTwitter }}</v-icon>
            </a>

            <v-divider
              inset
              vertical
              class="mx-1"
            />

            <a
              href="https://linkedin.com/company/teknologi-pendidikan"
              aria-label="Gå til linkedIn"
            >
              <v-icon large>{{ mdiLinkedin }}</v-icon>
            </a>
          </v-col>
          <v-col
            cols="12"
            class="footer-about"
          >
            Proyek Riset Mahasiswa<br>
            Departemen Teknologi Pendidikan<br>
            Universitas Negeri Malang (UM)<br><br>
            riset@teknologipendidikan.or.id<br>
          </v-col>
          <v-col
            class="footer-text"
            cols="12"
          >
            © {{ new Date().getFullYear() }} — Teknologi Pendidikan - all rights reserved.<br>
            This works based on bigfive-test.com
          </v-col>
        </v-row>
      </v-col>
    </v-row>
  </v-footer>
</template>

<script>
import { mdiFacebook, mdiTwitter, mdiGithub, mdiLinkedin } from '@mdi/js'

export default {
  name: 'Footer',
  data: () => ({
    mdiFacebook,
    mdiTwitter,
    mdiLinkedin,
    mdiGithub
  }),
  methods: {
    logClick (choice) {
      console.log(choice)
      this.$amplitude.getInstance().logEvent(`goes to ${choice}`, {})
    }
  }
}
</script>

<style scoped>
.footer-container {
  width: 100%;
  padding: 12px;
  margin-right: auto;
  margin-left: auto;
  max-width: 1200px;
}
.footer-heading {
  font-family: 'Passion One', cursive;
  font-size: 4rem;
  color: #4c4f5a;
  line-height: 3.5rem;
}
.footer-about {
  letter-spacing: .1em;
}
.footer-text {
  font-family: 'Didact Gothic', sans-serif;
  color: #b3b3b3;
}
.footer-wrapper {
  max-width: 1200px;
  width: 100%;
  padding: 12px;
  margin-right: auto;
  margin-left: auto;
}
</style>
