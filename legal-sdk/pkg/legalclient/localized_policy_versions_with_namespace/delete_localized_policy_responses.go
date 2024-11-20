// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions_with_namespace

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/legal-sdk/pkg/legalclientmodels"
)

// DeleteLocalizedPolicyReader is a Reader for the DeleteLocalizedPolicy structure.
type DeleteLocalizedPolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteLocalizedPolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteLocalizedPolicyNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteLocalizedPolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteLocalizedPolicyNoContent creates a DeleteLocalizedPolicyNoContent with default headers values
func NewDeleteLocalizedPolicyNoContent() *DeleteLocalizedPolicyNoContent {
	return &DeleteLocalizedPolicyNoContent{}
}

/*DeleteLocalizedPolicyNoContent handles this case with default header values.

  successful operation
*/
type DeleteLocalizedPolicyNoContent struct {
}

func (o *DeleteLocalizedPolicyNoContent) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId}][%d] deleteLocalizedPolicyNoContent ", 204)
}

func (o *DeleteLocalizedPolicyNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteLocalizedPolicyBadRequest creates a DeleteLocalizedPolicyBadRequest with default headers values
func NewDeleteLocalizedPolicyBadRequest() *DeleteLocalizedPolicyBadRequest {
	return &DeleteLocalizedPolicyBadRequest{}
}

/*DeleteLocalizedPolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40075</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_is_published_and_already_accepted_by_user</td></tr><tr><td>40076</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_is_active</td></tr></table>
*/
type DeleteLocalizedPolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *DeleteLocalizedPolicyBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{localizedPolicyVersionId}][%d] deleteLocalizedPolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteLocalizedPolicyBadRequest) ToJSONString() string {
	if o.Payload == nil {
		return "{}"
	}

	b, err := json.Marshal(o.Payload)
	if err != nil {
		fmt.Println(err)

		return fmt.Sprintf("Failed to marshal the payload: %+v", o.Payload)
	}

	return fmt.Sprintf("%+v", string(b))
}

func (o *DeleteLocalizedPolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteLocalizedPolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
