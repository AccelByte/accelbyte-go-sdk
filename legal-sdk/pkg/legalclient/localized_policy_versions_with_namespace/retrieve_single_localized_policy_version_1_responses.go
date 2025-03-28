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

// RetrieveSingleLocalizedPolicyVersion1Reader is a Reader for the RetrieveSingleLocalizedPolicyVersion1 structure.
type RetrieveSingleLocalizedPolicyVersion1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSingleLocalizedPolicyVersion1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSingleLocalizedPolicyVersion1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSingleLocalizedPolicyVersion1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveSingleLocalizedPolicyVersion1OK creates a RetrieveSingleLocalizedPolicyVersion1OK with default headers values
func NewRetrieveSingleLocalizedPolicyVersion1OK() *RetrieveSingleLocalizedPolicyVersion1OK {
	return &RetrieveSingleLocalizedPolicyVersion1OK{}
}

/*RetrieveSingleLocalizedPolicyVersion1OK handles this case with default header values.

  successful operation
*/
type RetrieveSingleLocalizedPolicyVersion1OK struct {
	Payload *legalclientmodels.RetrieveLocalizedPolicyVersionResponse
}

func (o *RetrieveSingleLocalizedPolicyVersion1OK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion1OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion1OK) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion1OK) GetPayload() *legalclientmodels.RetrieveLocalizedPolicyVersionResponse {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSingleLocalizedPolicyVersion1NotFound creates a RetrieveSingleLocalizedPolicyVersion1NotFound with default headers values
func NewRetrieveSingleLocalizedPolicyVersion1NotFound() *RetrieveSingleLocalizedPolicyVersion1NotFound {
	return &RetrieveSingleLocalizedPolicyVersion1NotFound{}
}

/*RetrieveSingleLocalizedPolicyVersion1NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>2912</td><td>errors.net.accelbyte.platform.legal.policy_version_not_found</td></tr></table>
*/
type RetrieveSingleLocalizedPolicyVersion1NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSingleLocalizedPolicyVersion1NotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/localized-policy-versions/{localizedPolicyVersionId}][%d] retrieveSingleLocalizedPolicyVersion1NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSingleLocalizedPolicyVersion1NotFound) ToJSONString() string {
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

func (o *RetrieveSingleLocalizedPolicyVersion1NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSingleLocalizedPolicyVersion1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
