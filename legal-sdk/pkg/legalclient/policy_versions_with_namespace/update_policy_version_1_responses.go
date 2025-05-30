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

// UpdatePolicyVersion1Reader is a Reader for the UpdatePolicyVersion1 structure.
type UpdatePolicyVersion1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePolicyVersion1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePolicyVersion1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePolicyVersion1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdatePolicyVersion1Conflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePolicyVersion1OK creates a UpdatePolicyVersion1OK with default headers values
func NewUpdatePolicyVersion1OK() *UpdatePolicyVersion1OK {
	return &UpdatePolicyVersion1OK{}
}

/*UpdatePolicyVersion1OK handles this case with default header values.

  successful operation
*/
type UpdatePolicyVersion1OK struct {
	Payload *legalclientmodels.UpdatePolicyVersionResponse
}

func (o *UpdatePolicyVersion1OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}][%d] updatePolicyVersion1OK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePolicyVersion1OK) ToJSONString() string {
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

func (o *UpdatePolicyVersion1OK) GetPayload() *legalclientmodels.UpdatePolicyVersionResponse {
	return o.Payload
}

func (o *UpdatePolicyVersion1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UpdatePolicyVersionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewUpdatePolicyVersion1BadRequest creates a UpdatePolicyVersion1BadRequest with default headers values
func NewUpdatePolicyVersion1BadRequest() *UpdatePolicyVersion1BadRequest {
	return &UpdatePolicyVersion1BadRequest{}
}

/*UpdatePolicyVersion1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr><tr><td>40042</td><td>errors.net.accelbyte.platform.legal.policy_version_freezed</td></tr></table>
*/
type UpdatePolicyVersion1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UpdatePolicyVersion1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}][%d] updatePolicyVersion1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePolicyVersion1BadRequest) ToJSONString() string {
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

func (o *UpdatePolicyVersion1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePolicyVersion1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePolicyVersion1Conflict creates a UpdatePolicyVersion1Conflict with default headers values
func NewUpdatePolicyVersion1Conflict() *UpdatePolicyVersion1Conflict {
	return &UpdatePolicyVersion1Conflict{}
}

/*UpdatePolicyVersion1Conflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40043</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_exist</td></tr></table>
*/
type UpdatePolicyVersion1Conflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UpdatePolicyVersion1Conflict) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/policies/versions/{policyVersionId}][%d] updatePolicyVersion1Conflict  %+v", 409, o.ToJSONString())
}

func (o *UpdatePolicyVersion1Conflict) ToJSONString() string {
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

func (o *UpdatePolicyVersion1Conflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePolicyVersion1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
