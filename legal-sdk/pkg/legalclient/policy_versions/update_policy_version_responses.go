// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions

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

// UpdatePolicyVersionReader is a Reader for the UpdatePolicyVersion structure.
type UpdatePolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *UpdatePolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewUpdatePolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewUpdatePolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewUpdatePolicyVersionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/policies/versions/{policyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewUpdatePolicyVersionOK creates a UpdatePolicyVersionOK with default headers values
func NewUpdatePolicyVersionOK() *UpdatePolicyVersionOK {
	return &UpdatePolicyVersionOK{}
}

/*UpdatePolicyVersionOK handles this case with default header values.

  successful operation
*/
type UpdatePolicyVersionOK struct {
	Payload *legalclientmodels.UpdatePolicyVersionResponse
}

func (o *UpdatePolicyVersionOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}][%d] updatePolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *UpdatePolicyVersionOK) ToJSONString() string {
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

func (o *UpdatePolicyVersionOK) GetPayload() *legalclientmodels.UpdatePolicyVersionResponse {
	return o.Payload
}

func (o *UpdatePolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePolicyVersionBadRequest creates a UpdatePolicyVersionBadRequest with default headers values
func NewUpdatePolicyVersionBadRequest() *UpdatePolicyVersionBadRequest {
	return &UpdatePolicyVersionBadRequest{}
}

/*UpdatePolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr><tr><td>40042</td><td>errors.net.accelbyte.platform.legal.policy_version_freezed</td></tr></table>
*/
type UpdatePolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UpdatePolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}][%d] updatePolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *UpdatePolicyVersionBadRequest) ToJSONString() string {
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

func (o *UpdatePolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewUpdatePolicyVersionConflict creates a UpdatePolicyVersionConflict with default headers values
func NewUpdatePolicyVersionConflict() *UpdatePolicyVersionConflict {
	return &UpdatePolicyVersionConflict{}
}

/*UpdatePolicyVersionConflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40043</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_exist</td></tr></table>
*/
type UpdatePolicyVersionConflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *UpdatePolicyVersionConflict) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}][%d] updatePolicyVersionConflict  %+v", 409, o.ToJSONString())
}

func (o *UpdatePolicyVersionConflict) ToJSONString() string {
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

func (o *UpdatePolicyVersionConflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *UpdatePolicyVersionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
