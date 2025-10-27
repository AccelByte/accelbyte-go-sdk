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

// OldPublicRetrieveSingleLocalizedPolicyVersionReader is a Reader for the OldPublicRetrieveSingleLocalizedPolicyVersion structure.
type OldPublicRetrieveSingleLocalizedPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldPublicRetrieveSingleLocalizedPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldPublicRetrieveSingleLocalizedPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewOldPublicRetrieveSingleLocalizedPolicyVersionForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldPublicRetrieveSingleLocalizedPolicyVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/public/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldPublicRetrieveSingleLocalizedPolicyVersionOK creates a OldPublicRetrieveSingleLocalizedPolicyVersionOK with default headers values
func NewOldPublicRetrieveSingleLocalizedPolicyVersionOK() *OldPublicRetrieveSingleLocalizedPolicyVersionOK {
	return &OldPublicRetrieveSingleLocalizedPolicyVersionOK{}
}

/*OldPublicRetrieveSingleLocalizedPolicyVersionOK handles this case with default header values.

  successful operation
*/
type OldPublicRetrieveSingleLocalizedPolicyVersionOK struct {
	Payload *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionOK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/localized-policy-versions/{localizedPolicyVersionId}][%d] oldPublicRetrieveSingleLocalizedPolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionOK) ToJSONString() string {
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

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionOK) GetPayload() *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse {
	return o.Payload
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldPublicRetrieveSingleLocalizedPolicyVersionForbidden creates a OldPublicRetrieveSingleLocalizedPolicyVersionForbidden with default headers values
func NewOldPublicRetrieveSingleLocalizedPolicyVersionForbidden() *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden {
	return &OldPublicRetrieveSingleLocalizedPolicyVersionForbidden{}
}

/*OldPublicRetrieveSingleLocalizedPolicyVersionForbidden handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40081</td><td>errors.net.accelbyte.platform.legal.policy_not_accessible</td></tr></table>
*/
type OldPublicRetrieveSingleLocalizedPolicyVersionForbidden struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden) Error() string {
	return fmt.Sprintf("[GET /agreement/public/localized-policy-versions/{localizedPolicyVersionId}][%d] oldPublicRetrieveSingleLocalizedPolicyVersionForbidden  %+v", 403, o.ToJSONString())
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden) ToJSONString() string {
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

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldPublicRetrieveSingleLocalizedPolicyVersionNotFound creates a OldPublicRetrieveSingleLocalizedPolicyVersionNotFound with default headers values
func NewOldPublicRetrieveSingleLocalizedPolicyVersionNotFound() *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound {
	return &OldPublicRetrieveSingleLocalizedPolicyVersionNotFound{}
}

/*OldPublicRetrieveSingleLocalizedPolicyVersionNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_not_found</td></tr></table>
*/
type OldPublicRetrieveSingleLocalizedPolicyVersionNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/public/localized-policy-versions/{localizedPolicyVersionId}][%d] oldPublicRetrieveSingleLocalizedPolicyVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound) ToJSONString() string {
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

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldPublicRetrieveSingleLocalizedPolicyVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
