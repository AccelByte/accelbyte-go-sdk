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

// PartialUpdatePolicy1Reader is a Reader for the PartialUpdatePolicy1 structure.
type PartialUpdatePolicy1Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PartialUpdatePolicy1Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPartialUpdatePolicy1OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPartialUpdatePolicy1BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPartialUpdatePolicy1OK creates a PartialUpdatePolicy1OK with default headers values
func NewPartialUpdatePolicy1OK() *PartialUpdatePolicy1OK {
	return &PartialUpdatePolicy1OK{}
}

/*PartialUpdatePolicy1OK handles this case with default header values.

  successful operation
*/
type PartialUpdatePolicy1OK struct {
	Payload *legalclientmodels.UpdateBasePolicyResponse
}

func (o *PartialUpdatePolicy1OK) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}][%d] partialUpdatePolicy1OK  %+v", 200, o.ToJSONString())
}

func (o *PartialUpdatePolicy1OK) ToJSONString() string {
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

func (o *PartialUpdatePolicy1OK) GetPayload() *legalclientmodels.UpdateBasePolicyResponse {
	return o.Payload
}

func (o *PartialUpdatePolicy1OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(legalclientmodels.UpdateBasePolicyResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPartialUpdatePolicy1BadRequest creates a PartialUpdatePolicy1BadRequest with default headers values
func NewPartialUpdatePolicy1BadRequest() *PartialUpdatePolicy1BadRequest {
	return &PartialUpdatePolicy1BadRequest{}
}

/*PartialUpdatePolicy1BadRequest handles this case with default header values.

  <table><tr><td>NumericErrorCode</td><td>ErrorCode</td></tr><tr><td>40032</td><td>errors.net.accelbyte.platform.legal.invalid_base_policy</td></tr></table>
*/
type PartialUpdatePolicy1BadRequest struct {
	Payload *legalclientmodels.ErrorEntity
}

func (o *PartialUpdatePolicy1BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /agreement/admin/namespaces/{namespace}/base-policies/{basePolicyId}][%d] partialUpdatePolicy1BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PartialUpdatePolicy1BadRequest) ToJSONString() string {
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

func (o *PartialUpdatePolicy1BadRequest) GetPayload() *legalclientmodels.ErrorEntity {
	return o.Payload
}

func (o *PartialUpdatePolicy1BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
