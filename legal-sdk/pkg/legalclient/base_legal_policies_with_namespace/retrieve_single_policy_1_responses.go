// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package base_legal_policies_with_namespace

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

// RetrieveSinglePolicy1Reader is a Reader for the RetrieveSinglePolicy1 structure.
type RetrieveSinglePolicy1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *RetrieveSinglePolicy1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewRetrieveSinglePolicy1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewRetrieveSinglePolicy1NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewRetrieveSinglePolicy1OK creates a RetrieveSinglePolicy1OK with default headers values
func NewRetrieveSinglePolicy1OK() *RetrieveSinglePolicy1OK {
	return &RetrieveSinglePolicy1OK{}
}

/*RetrieveSinglePolicy1OK handles this case with default header values.

  successful operation
*/
type RetrieveSinglePolicy1OK struct {
	Payload *legalclientmodels.RetrieveBasePolicyResponse
}

func (o *RetrieveSinglePolicy1OK) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}][%d] retrieveSinglePolicy1OK  %+v", 200, o.ToJSONString())
}

func (o *RetrieveSinglePolicy1OK) ToJSONString() string {
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

func (o *RetrieveSinglePolicy1OK) GetPayload() *legalclientmodels.RetrieveBasePolicyResponse {
	return o.Payload
}

func (o *RetrieveSinglePolicy1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewRetrieveSinglePolicy1NotFound creates a RetrieveSinglePolicy1NotFound with default headers values
func NewRetrieveSinglePolicy1NotFound() *RetrieveSinglePolicy1NotFound {
	return &RetrieveSinglePolicy1NotFound{}
}

/*RetrieveSinglePolicy1NotFound handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40041</td><td>errors.net.accelbyte.platform.legal.policy_not_found</td></tr></table>
*/
type RetrieveSinglePolicy1NotFound struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *RetrieveSinglePolicy1NotFound) Error() string {
	return fmt.Sprintf("[GET /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}][%d] retrieveSinglePolicy1NotFound  %+v", 404, o.ToJSONString())
}

func (o *RetrieveSinglePolicy1NotFound) ToJSONString() string {
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

func (o *RetrieveSinglePolicy1NotFound) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *RetrieveSinglePolicy1NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
