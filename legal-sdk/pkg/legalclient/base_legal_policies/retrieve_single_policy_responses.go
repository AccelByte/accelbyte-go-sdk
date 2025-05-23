// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies

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

// RetrieveSinglePolicyReader is a Reader for the RetrieveSinglePolicy structure.
type RetrieveSinglePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSinglePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSinglePolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSinglePolicyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/base-policies/{basePolicyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveSinglePolicyOK creates a RetrieveSinglePolicyOK with default headers values
func NewRetrieveSinglePolicyOK() *RetrieveSinglePolicyOK {
	return &RetrieveSinglePolicyOK{}
}

/*RetrieveSinglePolicyOK handles this case with default header values.

  successful operation
*/
type RetrieveSinglePolicyOK struct {
	Payload *legalclientmodels.RetrieveBasePolicyResponse
}

func (o *RetrieveSinglePolicyOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}][%d] retrieveSinglePolicyOK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSinglePolicyOK) ToJSONString() string {
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

func (o *RetrieveSinglePolicyOK) GetPayload() *legalclientmodels.RetrieveBasePolicyResponse {
	return o.Payload
}

func (o *RetrieveSinglePolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.RetrieveBasePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewRetrieveSinglePolicyNotFound creates a RetrieveSinglePolicyNotFound with default headers values
func NewRetrieveSinglePolicyNotFound() *RetrieveSinglePolicyNotFound {
	return &RetrieveSinglePolicyNotFound{}
}

/*RetrieveSinglePolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40031</td><td>errors.net.accelbyte.platform.legal.base_policy_not_found</td></tr></table>
*/
type RetrieveSinglePolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSinglePolicyNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}][%d] retrieveSinglePolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSinglePolicyNotFound) ToJSONString() string {
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

func (o *RetrieveSinglePolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSinglePolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
