FROM rhel7

ENV IMAGE_NAME="pagure-e2e-tests" \
    SUMMARY="Image for testing" \
    DESCRIPTION="This should pass Zdravo validation and build"

LABEL summary="$SUMMARY" \
      description="$DESCRIPTION" \
      io.k8s.description="$DESCRIPTION" \
      io.k8s.display-name="pagure-e2e-test" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="dummy, testing, pagure" \
      com.redhat.component="pagure-e2e-tests-container" \
      name="${IMAGE_NAME}" \
      version="1" \
      usage="docker run pagure-e2e-tests" \
      maintainer="user-cont@redhat.com"

CMD ["echo", "Testing Pagure or user-cont bots"]
