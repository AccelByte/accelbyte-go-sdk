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

// OldRetrieveSinglePolicyReader is a Reader for the OldRetrieveSinglePolicy structure.
type OldRetrieveSinglePolicyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *OldRetrieveSinglePolicyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewOldRetrieveSinglePolicyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewOldRetrieveSinglePolicyNotFound()
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

// NewOldRetrieveSinglePolicyOK creates a OldRetrieveSinglePolicyOK with default headers values
func NewOldRetrieveSinglePolicyOK() *OldRetrieveSinglePolicyOK {
	return &OldRetrieveSinglePolicyOK{}
}

/*OldRetrieveSinglePolicyOK handles this case with default header values.

  successful operation
*/
type OldRetrieveSinglePolicyOK struct {
	Payload *legalclientmodels.RetrieveBasePolicyResponse
}

func (o *OldRetrieveSinglePolicyOK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}][%d] oldRetrieveSinglePolicyOK  %+v", 200, o.ToJSONString())
}

func (o *OldRetrieveSinglePolicyOK) ToJSONString() string {
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

func (o *OldRetrieveSinglePolicyOK) GetPayload() *legalclientmodels.RetrieveBasePolicyResponse {
	return o.Payload
}

func (o *OldRetrieveSinglePolicyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewOldRetrieveSinglePolicyNotFound creates a OldRetrieveSinglePolicyNotFound with default headers values
func NewOldRetrieveSinglePolicyNotFound() *OldRetrieveSinglePolicyNotFound {
	return &OldRetrieveSinglePolicyNotFound{}
}

/*OldRetrieveSinglePolicyNotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40031</td><td>errors.net.accelbyte.platform.legal.base_policy_not_found</td></tr></table>
*/
type OldRetrieveSinglePolicyNotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *OldRetrieveSinglePolicyNotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/base-policies/{basePolicyId}][%d] oldRetrieveSinglePolicyNotFound  %+v", 404, o.ToJSONString())
}

func (o *OldRetrieveSinglePolicyNotFound) ToJSONString() string {
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

func (o *OldRetrieveSinglePolicyNotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *OldRetrieveSinglePolicyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
