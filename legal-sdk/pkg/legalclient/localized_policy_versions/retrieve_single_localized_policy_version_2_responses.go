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

// RetrieveSingleLocalizedPolicyVersion2Reader is a Reader for the RetrieveSingleLocalizedPolicyVersion2 structure.
type RetrieveSingleLocalizedPolicyVersion2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSingleLocalizedPolicyVersion2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSingleLocalizedPolicyVersion2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveSingleLocalizedPolicyVersion2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSingleLocalizedPolicyVersion2NotFound()
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

// NewRetrieveSingleLocalizedPolicyVersion2OK creates a RetrieveSingleLocalizedPolicyVersion2OK with default headers values
func NewRetrieveSingleLocalizedPolicyVersion2OK() *RetrieveSingleLocalizedPolicyVersion2OK {
	return &RetrieveSingleLocalizedPolicyVersion2OK{}
}

/*RetrieveSingleLocalizedPolicyVersion2OK handles this case with default header values.

  successful operation
*/
type RetrieveSingleLocalizedPolicyVersion2OK struct {
	Payload *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse
}

func (o *RetrieveSingleLocalizedPolicyVersion2OK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion2OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion2OK) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion2OK) GetPayload() *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSingleLocalizedPolicyVersion2Forbidden creates a RetrieveSingleLocalizedPolicyVersion2Forbidden with default headers values
func NewRetrieveSingleLocalizedPolicyVersion2Forbidden() *RetrieveSingleLocalizedPolicyVersion2Forbidden {
	return &RetrieveSingleLocalizedPolicyVersion2Forbidden{}
}

/*RetrieveSingleLocalizedPolicyVersion2Forbidden handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40081</td><td>errors.net.accelbyte.platform.legal.policy_not_accessible</td></tr></table>
*/
type RetrieveSingleLocalizedPolicyVersion2Forbidden struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSingleLocalizedPolicyVersion2Forbidden) Error() string {
	return fmt.Sprintf("[GET /agreement/public/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion2Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion2Forbidden) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion2Forbidden) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSingleLocalizedPolicyVersion2NotFound creates a RetrieveSingleLocalizedPolicyVersion2NotFound with default headers values
func NewRetrieveSingleLocalizedPolicyVersion2NotFound() *RetrieveSingleLocalizedPolicyVersion2NotFound {
	return &RetrieveSingleLocalizedPolicyVersion2NotFound{}
}

/*RetrieveSingleLocalizedPolicyVersion2NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_not_found</td></tr></table>
*/
type RetrieveSingleLocalizedPolicyVersion2NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSingleLocalizedPolicyVersion2NotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/public/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion2NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion2NotFound) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion2NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
