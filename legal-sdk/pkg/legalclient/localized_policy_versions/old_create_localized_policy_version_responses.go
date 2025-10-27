// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package localized_policy_versions

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

// OldCreateLocalizedPolicyVersionReader is a Reader for the OldCreateLocalizedPolicyVersion structure.
type OldCreateLocalizedPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldCreateLocalizedPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewOldCreateLocalizedPolicyVersionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewOldCreateLocalizedPolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewOldCreateLocalizedPolicyVersionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/localized-policy-versions/versions/{policyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldCreateLocalizedPolicyVersionCreated creates a OldCreateLocalizedPolicyVersionCreated with default headers values
func NewOldCreateLocalizedPolicyVersionCreated() *OldCreateLocalizedPolicyVersionCreated {
	return &OldCreateLocalizedPolicyVersionCreated{}
}

/*OldCreateLocalizedPolicyVersionCreated handles this case with default header values.

  successful operation
*/
type OldCreateLocalizedPolicyVersionCreated struct {
	Payload *legalclientmodels.CreateLocalizedPolicyVersionResponse
}

func (o *OldCreateLocalizedPolicyVersionCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/localized-policy-versions/versions/{policyVersionId}][%d] oldCreateLocalizedPolicyVersionCreated  %+v", 201, o.ToJSONString())
}

func (o *OldCreateLocalizedPolicyVersionCreated) ToJSONString() string {
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

func (o *OldCreateLocalizedPolicyVersionCreated) GetPayload() *legalclientmodels.CreateLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *OldCreateLocalizedPolicyVersionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.CreateLocalizedPolicyVersionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldCreateLocalizedPolicyVersionBadRequest creates a OldCreateLocalizedPolicyVersionBadRequest with default headers values
func NewOldCreateLocalizedPolicyVersionBadRequest() *OldCreateLocalizedPolicyVersionBadRequest {
	return &OldCreateLocalizedPolicyVersionBadRequest{}
}

/*OldCreateLocalizedPolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr></table>
*/
type OldCreateLocalizedPolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldCreateLocalizedPolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/localized-policy-versions/versions/{policyVersionId}][%d] oldCreateLocalizedPolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *OldCreateLocalizedPolicyVersionBadRequest) ToJSONString() string {
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

func (o *OldCreateLocalizedPolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldCreateLocalizedPolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldCreateLocalizedPolicyVersionConflict creates a OldCreateLocalizedPolicyVersionConflict with default headers values
func NewOldCreateLocalizedPolicyVersionConflict() *OldCreateLocalizedPolicyVersionConflict {
	return &OldCreateLocalizedPolicyVersionConflict{}
}

/*OldCreateLocalizedPolicyVersionConflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40044</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_exist</td></tr></table>
*/
type OldCreateLocalizedPolicyVersionConflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldCreateLocalizedPolicyVersionConflict) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/localized-policy-versions/versions/{policyVersionId}][%d] oldCreateLocalizedPolicyVersionConflict  %+v", 409, o.ToJSONString())
}

func (o *OldCreateLocalizedPolicyVersionConflict) ToJSONString() string {
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

func (o *OldCreateLocalizedPolicyVersionConflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldCreateLocalizedPolicyVersionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
