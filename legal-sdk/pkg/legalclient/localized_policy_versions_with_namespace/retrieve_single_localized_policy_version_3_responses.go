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

// RetrieveSingleLocalizedPolicyVersion3Reader is a Reader for the RetrieveSingleLocalizedPolicyVersion3 structure.
type RetrieveSingleLocalizedPolicyVersion3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSingleLocalizedPolicyVersion3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSingleLocalizedPolicyVersion3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewRetrieveSingleLocalizedPolicyVersion3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSingleLocalizedPolicyVersion3NotFound()
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

// NewRetrieveSingleLocalizedPolicyVersion3OK creates a RetrieveSingleLocalizedPolicyVersion3OK with default headers values
func NewRetrieveSingleLocalizedPolicyVersion3OK() *RetrieveSingleLocalizedPolicyVersion3OK {
	return &RetrieveSingleLocalizedPolicyVersion3OK{}
}

/*RetrieveSingleLocalizedPolicyVersion3OK handles this case with default header values.

  successful operation
*/
type RetrieveSingleLocalizedPolicyVersion3OK struct {
	Payload *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse
}

func (o *RetrieveSingleLocalizedPolicyVersion3OK) Error() string {
	return fmt.Sprintf("[GET /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion3OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion3OK) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion3OK) GetPayload() *legalclientmodels.RetrieveLocalizedPolicyVersionPublicResponse {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSingleLocalizedPolicyVersion3Forbidden creates a RetrieveSingleLocalizedPolicyVersion3Forbidden with default headers values
func NewRetrieveSingleLocalizedPolicyVersion3Forbidden() *RetrieveSingleLocalizedPolicyVersion3Forbidden {
	return &RetrieveSingleLocalizedPolicyVersion3Forbidden{}
}

/*RetrieveSingleLocalizedPolicyVersion3Forbidden handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40081</td><td>errors.net.accelbyte.platform.legal.policy_not_accessible</td></tr></table>
*/
type RetrieveSingleLocalizedPolicyVersion3Forbidden struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSingleLocalizedPolicyVersion3Forbidden) Error() string {
	return fmt.Sprintf("[GET /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion3Forbidden) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion3Forbidden) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSingleLocalizedPolicyVersion3NotFound creates a RetrieveSingleLocalizedPolicyVersion3NotFound with default headers values
func NewRetrieveSingleLocalizedPolicyVersion3NotFound() *RetrieveSingleLocalizedPolicyVersion3NotFound {
	return &RetrieveSingleLocalizedPolicyVersion3NotFound{}
}

/*RetrieveSingleLocalizedPolicyVersion3NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40038</td><td>errors.net.accelbyte.platform.legal.localized_policy_version_not_found</td></tr></table>
*/
type RetrieveSingleLocalizedPolicyVersion3NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSingleLocalizedPolicyVersion3NotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/public/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion3NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion3NotFound) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion3NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
