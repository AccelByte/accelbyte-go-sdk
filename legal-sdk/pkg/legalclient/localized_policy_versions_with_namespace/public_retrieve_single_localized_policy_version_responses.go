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

// PublicRetrieveSingleLocalizedPolicyVersionReader is a Reader for the PublicRetrieveSingleLocalizedPolicyVersion structure.
type PublicRetrieveSingleLocalizedPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicRetrieveSingleLocalizedPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicRetrieveSingleLocalizedPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewPublicRetrieveSingleLocalizedPolicyVersionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicRetrieveSingleLocalizedPolicyVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicRetrieveSingleLocalizedPolicyVersionOK creates a PublicRetrieveSingleLocalizedPolicyVersionOK with default headers values
func NewPublicRetrieveSingleLocalizedPolicyVersionOK() *PublicRetrieveSingleLocalizedPolicyVersionOK {
	return &PublicRetrieveSingleLocalizedPolicyVersionOK{}
}

/*PublicRetrieveSingleLocalizedPolicyVersionOK handles this case with default header values.

  successful operation
*/
type PublicRetrieveSingleLocalizedPolicyVersionOK struct {
	Payload *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] publicRetrieveSingleLocalizedPolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionOK) ToJSONString() string {
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

func (o *PublicRetrieveSingleLocalizedPolicyVersionOK) GetPayload() *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse {
	return o.Payload
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicRetrieveSingleLocalizedPolicyVersionForbidden creates a PublicRetrieveSingleLocalizedPolicyVersionForbidden with default headers values
func NewPublicRetrieveSingleLocalizedPolicyVersionForbidden() *PublicRetrieveSingleLocalizedPolicyVersionForbidden {
	return &PublicRetrieveSingleLocalizedPolicyVersionForbidden{}
}

/*PublicRetrieveSingleLocalizedPolicyVersionForbidden handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40081</td><td>errors.net.accelbyte.platform.legal.policy_not_accessible</td></tr></table>
*/
type PublicRetrieveSingleLocalizedPolicyVersionForbidden struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionForbidden) Error() string {
	return fmt.Sprintf("[GET /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] publicRetrieveSingleLocalizedPolicyVersionForbidden  %+v", 403, o.ToJSONString())
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionForbidden) ToJSONString() string {
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

func (o *PublicRetrieveSingleLocalizedPolicyVersionForbidden) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicRetrieveSingleLocalizedPolicyVersionNotFound creates a PublicRetrieveSingleLocalizedPolicyVersionNotFound with default headers values
func NewPublicRetrieveSingleLocalizedPolicyVersionNotFound() *PublicRetrieveSingleLocalizedPolicyVersionNotFound {
	return &PublicRetrieveSingleLocalizedPolicyVersionNotFound{}
}

/*PublicRetrieveSingleLocalizedPolicyVersionNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_not_found</td></tr></table>
*/
type PublicRetrieveSingleLocalizedPolicyVersionNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] publicRetrieveSingleLocalizedPolicyVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionNotFound) ToJSONString() string {
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

func (o *PublicRetrieveSingleLocalizedPolicyVersionNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PublicRetrieveSingleLocalizedPolicyVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
