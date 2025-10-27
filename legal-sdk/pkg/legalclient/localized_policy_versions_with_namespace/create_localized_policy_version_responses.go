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

// CreateLocalizedPolicyVersionReader is a Reader for the CreateLocalizedPolicyVersion structure.
type CreateLocalizedPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateLocalizedPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateLocalizedPolicyVersionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateLocalizedPolicyVersionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateLocalizedPolicyVersionConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewCreateLocalizedPolicyVersionCreated creates a CreateLocalizedPolicyVersionCreated with default headers values
func NewCreateLocalizedPolicyVersionCreated() *CreateLocalizedPolicyVersionCreated {
	return &CreateLocalizedPolicyVersionCreated{}
}

/*CreateLocalizedPolicyVersionCreated handles this case with default header values.

  successful operation
*/
type CreateLocalizedPolicyVersionCreated struct {
	Payload *legalclientmodels.CreateLocalizedPolicyVersionResponse
}

func (o *CreateLocalizedPolicyVersionCreated) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}][%d] createLocalizedPolicyVersionCreated  %+v", 201, o.ToJSONString())
}

func (o *CreateLocalizedPolicyVersionCreated) ToJSONString() string {
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

func (o *CreateLocalizedPolicyVersionCreated) GetPayload() *legalclientmodels.CreateLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *CreateLocalizedPolicyVersionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLocalizedPolicyVersionBadRequest creates a CreateLocalizedPolicyVersionBadRequest with default headers values
func NewCreateLocalizedPolicyVersionBadRequest() *CreateLocalizedPolicyVersionBadRequest {
	return &CreateLocalizedPolicyVersionBadRequest{}
}

/*CreateLocalizedPolicyVersionBadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr></table>
*/
type CreateLocalizedPolicyVersionBadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreateLocalizedPolicyVersionBadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}][%d] createLocalizedPolicyVersionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateLocalizedPolicyVersionBadRequest) ToJSONString() string {
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

func (o *CreateLocalizedPolicyVersionBadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateLocalizedPolicyVersionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLocalizedPolicyVersionConflict creates a CreateLocalizedPolicyVersionConflict with default headers values
func NewCreateLocalizedPolicyVersionConflict() *CreateLocalizedPolicyVersionConflict {
	return &CreateLocalizedPolicyVersionConflict{}
}

/*CreateLocalizedPolicyVersionConflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40044</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_exist</td></tr></table>
*/
type CreateLocalizedPolicyVersionConflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreateLocalizedPolicyVersionConflict) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}][%d] createLocalizedPolicyVersionConflict  %+v", 409, o.ToJSONString())
}

func (o *CreateLocalizedPolicyVersionConflict) ToJSONString() string {
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

func (o *CreateLocalizedPolicyVersionConflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateLocalizedPolicyVersionConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
