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

// OldRetrieveSingleLocalizedPolicyVersionReader is a Reader for the OldRetrieveSingleLocalizedPolicyVersion structure.
type OldRetrieveSingleLocalizedPolicyVersionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldRetrieveSingleLocalizedPolicyVersionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldRetrieveSingleLocalizedPolicyVersionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldRetrieveSingleLocalizedPolicyVersionNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewOldRetrieveSingleLocalizedPolicyVersionOK creates a OldRetrieveSingleLocalizedPolicyVersionOK with default headers values
func NewOldRetrieveSingleLocalizedPolicyVersionOK() *OldRetrieveSingleLocalizedPolicyVersionOK {
	return &OldRetrieveSingleLocalizedPolicyVersionOK{}
}

/*OldRetrieveSingleLocalizedPolicyVersionOK handles this case with default header values.

  successful operation
*/
type OldRetrieveSingleLocalizedPolicyVersionOK struct {
	Payload *legalclientmodels.RetrieveLocalizedPolicyVersionResponse
}

func (o *OldRetrieveSingleLocalizedPolicyVersionOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}][%d] oldRetrieveSingleLocalizedPolicyVersionOK  %+v", 200, o.ToJSONString())
}

func (o *OldRetrieveSingleLocalizedPolicyVersionOK) ToJSONString() string {
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

func (o *OldRetrieveSingleLocalizedPolicyVersionOK) GetPayload() *legalclientmodels.RetrieveLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *OldRetrieveSingleLocalizedPolicyVersionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrieveLocalizedPolicyVersionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewOldRetrieveSingleLocalizedPolicyVersionNotFound creates a OldRetrieveSingleLocalizedPolicyVersionNotFound with default headers values
func NewOldRetrieveSingleLocalizedPolicyVersionNotFound() *OldRetrieveSingleLocalizedPolicyVersionNotFound {
	return &OldRetrieveSingleLocalizedPolicyVersionNotFound{}
}

/*OldRetrieveSingleLocalizedPolicyVersionNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>2912</td><td>errors.net.accelbyte.platform.legal.policy_version_not_found</td></tr></table>
*/
type OldRetrieveSingleLocalizedPolicyVersionNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldRetrieveSingleLocalizedPolicyVersionNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/localized-policy-versions/{localizedPolicyVersionId}][%d] oldRetrieveSingleLocalizedPolicyVersionNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldRetrieveSingleLocalizedPolicyVersionNotFound) ToJSONString() string {
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

func (o *OldRetrieveSingleLocalizedPolicyVersionNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldRetrieveSingleLocalizedPolicyVersionNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
