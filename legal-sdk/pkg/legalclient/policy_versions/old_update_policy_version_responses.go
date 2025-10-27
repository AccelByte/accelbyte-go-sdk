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

// OldUpdatePolicyVersionReader is a Reader for the OldUpdatePolicyVersion structure.
type OldUpdatePolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldUpdatePolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldUpdatePolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldUpdatePolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewOldUpdatePolicyVersionConflict()
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

// NewOldUpdatePolicyVersionOK creates a OldUpdatePolicyVersionOK with default headers values
func NewOldUpdatePolicyVersionOK() *OldUpdatePolicyVersionOK {
	return &OldUpdatePolicyVersionOK{}
}

/*OldUpdatePolicyVersionOK handles this case with default header values.

  successful operation
*/
type OldUpdatePolicyVersionOK struct {
	Payload *legalclientmodels.UpdatePolicyVersionResponse
}

func (o *OldUpdatePolicyVersionOK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}][%d] oldUpdatePolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *OldUpdatePolicyVersionOK) ToJSONString() string {
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

func (o *OldUpdatePolicyVersionOK) GetPayload() *legalclientmodels.UpdatePolicyVersionResponse {
	return o.Payload
}

func (o *OldUpdatePolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldUpdatePolicyVersionBadRequest creates a OldUpdatePolicyVersionBadRequest with default headers values
func NewOldUpdatePolicyVersionBadRequest() *OldUpdatePolicyVersionBadRequest {
	return &OldUpdatePolicyVersionBadRequest{}
}

/*OldUpdatePolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40035</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr><tr><td>40042</td><td>errors.net.accelbyte.platform.legal.policy_version_freezed</td></tr></table>
*/
type OldUpdatePolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldUpdatePolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}][%d] oldUpdatePolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldUpdatePolicyVersionBadRequest) ToJSONString() string {
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

func (o *OldUpdatePolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldUpdatePolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldUpdatePolicyVersionConflict creates a OldUpdatePolicyVersionConflict with default headers values
func NewOldUpdatePolicyVersionConflict() *OldUpdatePolicyVersionConflict {
	return &OldUpdatePolicyVersionConflict{}
}

/*OldUpdatePolicyVersionConflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40043</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_exist</td></tr></table>
*/
type OldUpdatePolicyVersionConflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldUpdatePolicyVersionConflict) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/policies/versions/{policyVersionId}][%d] oldUpdatePolicyVersionConflict  %+v", 409, o.ToJSONString())
}

func (o *OldUpdatePolicyVersionConflict) ToJSONString() string {
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

func (o *OldUpdatePolicyVersionConflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldUpdatePolicyVersionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
