// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions_with_namespace

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

// UnpublishPolicyVersionReader is a Reader for the UnpublishPolicyVersion structure.
type UnpublishPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UnpublishPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewUnpublishPolicyVersionNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUnpublishPolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/unpublish returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUnpublishPolicyVersionNoContent creates a UnpublishPolicyVersionNoContent with default headers values
func NewUnpublishPolicyVersionNoContent() *UnpublishPolicyVersionNoContent {
	return &UnpublishPolicyVersionNoContent{}
}

/*UnpublishPolicyVersionNoContent handles this case with default header values.

  Successful operation
*/
type UnpublishPolicyVersionNoContent struct {
}

func (o *UnpublishPolicyVersionNoContent) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/unpublish][%d] unpublishPolicyVersionNoContent ", 204)
}

func (o *UnpublishPolicyVersionNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewUnpublishPolicyVersionBadRequest creates a UnpublishPolicyVersionBadRequest with default headers values
func NewUnpublishPolicyVersionBadRequest() *UnpublishPolicyVersionBadRequest {
	return &UnpublishPolicyVersionBadRequest{}
}

/*UnpublishPolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr><tr><td>40070</td><td>errors.net.accelbyte.platform.legal.policy_version_is_published_and_already_accepted_by_user</td></tr></table>
*/
type UnpublishPolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UnpublishPolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}/unpublish][%d] unpublishPolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UnpublishPolicyVersionBadRequest) ToJSONString() string {
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

func (o *UnpublishPolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UnpublishPolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
