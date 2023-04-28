// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policy_versions_with_namespace

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

// RetrieveSinglePolicyVersion1Reader is a Reader for the RetrieveSinglePolicyVersion1 structure.
type RetrieveSinglePolicyVersion1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSinglePolicyVersion1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSinglePolicyVersion1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSinglePolicyVersion1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/policies/{policyId}/versions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveSinglePolicyVersion1OK creates a RetrieveSinglePolicyVersion1OK with default headers values
func NewRetrieveSinglePolicyVersion1OK() *RetrieveSinglePolicyVersion1OK {
	return &RetrieveSinglePolicyVersion1OK{}
}

/*RetrieveSinglePolicyVersion1OK handles this case with default header values.

  successful operation
*/
type RetrieveSinglePolicyVersion1OK struct {
	Payload []*legalclientmodels.RetrievePolicyVersionResponse
}

func (o *RetrieveSinglePolicyVersion1OK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/policies/{policyId}/versions][%d] retrieveSinglePolicyVersion1OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSinglePolicyVersion1OK) ToJSONString() string {
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

func (o *RetrieveSinglePolicyVersion1OK) GetPayload() []*legalclientmodels.RetrievePolicyVersionResponse {
	return o.Payload
}

func (o *RetrieveSinglePolicyVersion1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), &o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveSinglePolicyVersion1NotFound creates a RetrieveSinglePolicyVersion1NotFound with default headers values
func NewRetrieveSinglePolicyVersion1NotFound() *RetrieveSinglePolicyVersion1NotFound {
	return &RetrieveSinglePolicyVersion1NotFound{}
}

/*RetrieveSinglePolicyVersion1NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40036</td><td>errors.net.accelbyte.platform.legal.policy_version_id_not_found</td></tr></table>
*/
type RetrieveSinglePolicyVersion1NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSinglePolicyVersion1NotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/policies/{policyId}/versions][%d] retrieveSinglePolicyVersion1NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSinglePolicyVersion1NotFound) ToJSONString() string {
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

func (o *RetrieveSinglePolicyVersion1NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSinglePolicyVersion1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
