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

// CreateLocalizedPolicyVersion1Reader is a Reader for the CreateLocalizedPolicyVersion1 structure.
type CreateLocalizedPolicyVersion1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *CreateLocalizedPolicyVersion1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewCreateLocalizedPolicyVersion1Created()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewCreateLocalizedPolicyVersion1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewCreateLocalizedPolicyVersion1Conflict()
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

// NewCreateLocalizedPolicyVersion1Created creates a CreateLocalizedPolicyVersion1Created with default headers values
func NewCreateLocalizedPolicyVersion1Created() *CreateLocalizedPolicyVersion1Created {
	return &CreateLocalizedPolicyVersion1Created{}
}

/*CreateLocalizedPolicyVersion1Created handles this case with default header values.

  successful operation
*/
type CreateLocalizedPolicyVersion1Created struct {
	Payload *legalclientmodels.CreateLocalizedPolicyVersionResponse
}

func (o *CreateLocalizedPolicyVersion1Created) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}][%d] createLocalizedPolicyVersion1Created  %+v", 201, o.ToJSONString())
}

func (o *CreateLocalizedPolicyVersion1Created) ToJSONString() string {
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

func (o *CreateLocalizedPolicyVersion1Created) GetPayload() *legalclientmodels.CreateLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *CreateLocalizedPolicyVersion1Created) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLocalizedPolicyVersion1BadRequest creates a CreateLocalizedPolicyVersion1BadRequest with default headers values
func NewCreateLocalizedPolicyVersion1BadRequest() *CreateLocalizedPolicyVersion1BadRequest {
	return &CreateLocalizedPolicyVersion1BadRequest{}
}

/*CreateLocalizedPolicyVersion1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40033</td><td>errors.net.accelbyte.platform.legal.invalid_policy_version</td></tr></table>
*/
type CreateLocalizedPolicyVersion1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreateLocalizedPolicyVersion1BadRequest) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}][%d] createLocalizedPolicyVersion1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *CreateLocalizedPolicyVersion1BadRequest) ToJSONString() string {
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

func (o *CreateLocalizedPolicyVersion1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateLocalizedPolicyVersion1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewCreateLocalizedPolicyVersion1Conflict creates a CreateLocalizedPolicyVersion1Conflict with default headers values
func NewCreateLocalizedPolicyVersion1Conflict() *CreateLocalizedPolicyVersion1Conflict {
	return &CreateLocalizedPolicyVersion1Conflict{}
}

/*CreateLocalizedPolicyVersion1Conflict handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40044</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_already_exist</td></tr></table>
*/
type CreateLocalizedPolicyVersion1Conflict struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *CreateLocalizedPolicyVersion1Conflict) Error() string {
	return fmt.Sprintf("[POST /agreement/admin/namespaces/{namespace}/localized-policy-versions/versions/{policyVersionId}][%d] createLocalizedPolicyVersion1Conflict  %+v", 409, o.ToJSONString())
}

func (o *CreateLocalizedPolicyVersion1Conflict) ToJSONString() string {
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

func (o *CreateLocalizedPolicyVersion1Conflict) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *CreateLocalizedPolicyVersion1Conflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
