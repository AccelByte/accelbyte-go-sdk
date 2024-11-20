// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies_with_namespace

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

// DeletePolicyReader is a Reader for the DeletePolicy structure.
type DeletePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeletePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeletePolicyNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeletePolicyBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /agreement/admin/namespaces/{namespace}/policies/{policyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeletePolicyNoContent creates a DeletePolicyNoContent with default headers values
func NewDeletePolicyNoContent() *DeletePolicyNoContent {
	return &DeletePolicyNoContent{}
}

/*DeletePolicyNoContent handles this case with default header values.

  Successful operation
*/
type DeletePolicyNoContent struct {
}

func (o *DeletePolicyNoContent) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/namespaces/{namespace}/policies/{policyId}][%d] deletePolicyNoContent ", 204)
}

func (o *DeletePolicyNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeletePolicyBadRequest creates a DeletePolicyBadRequest with default headers values
func NewDeletePolicyBadRequest() *DeletePolicyBadRequest {
	return &DeletePolicyBadRequest{}
}

/*DeletePolicyBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_id</td></tr><tr><td>40072</td><td>errors.net.accelbyte.platform.legal.policy_have_published_policy_version</td></tr><tr><td>40073</td><td>errors.net.accelbyte.platform.legal.policy_have_published_policy_version_and_already_accepted_by_user</td></tr><tr><td>40074</td><td>errors.net.accelbyte.platform.legal.policy_is_default_policy</td></tr></table>
*/
type DeletePolicyBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *DeletePolicyBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /agreement/admin/namespaces/{namespace}/policies/{policyId}][%d] deletePolicyBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeletePolicyBadRequest) ToJSONString() string {
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

func (o *DeletePolicyBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeletePolicyBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
