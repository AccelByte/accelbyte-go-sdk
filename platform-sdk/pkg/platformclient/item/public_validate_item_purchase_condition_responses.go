// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// PublicValidateItemPurchaseConditionReader is a Reader for the PublicValidateItemPurchaseCondition structure.
type PublicValidateItemPurchaseConditionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicValidateItemPurchaseConditionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicValidateItemPurchaseConditionOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 422:
		result := NewPublicValidateItemPurchaseConditionUnprocessableEntity()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /platform/public/namespaces/{namespace}/items/purchase/conditions/validate returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicValidateItemPurchaseConditionOK creates a PublicValidateItemPurchaseConditionOK with default headers values
func NewPublicValidateItemPurchaseConditionOK() *PublicValidateItemPurchaseConditionOK {
	return &PublicValidateItemPurchaseConditionOK{}
}

/*PublicValidateItemPurchaseConditionOK handles this case with default header values.

  successful operation
*/
type PublicValidateItemPurchaseConditionOK struct {
	Payload []*platformclientmodels.ItemPurchaseConditionValidateResult
}

func (o *PublicValidateItemPurchaseConditionOK) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/items/purchase/conditions/validate][%d] publicValidateItemPurchaseConditionOK  %+v", 200, o.ToJSONString())
}

func (o *PublicValidateItemPurchaseConditionOK) ToJSONString() string {
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

func (o *PublicValidateItemPurchaseConditionOK) GetPayload() []*platformclientmodels.ItemPurchaseConditionValidateResult {
	return o.Payload
}

func (o *PublicValidateItemPurchaseConditionOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicValidateItemPurchaseConditionUnprocessableEntity creates a PublicValidateItemPurchaseConditionUnprocessableEntity with default headers values
func NewPublicValidateItemPurchaseConditionUnprocessableEntity() *PublicValidateItemPurchaseConditionUnprocessableEntity {
	return &PublicValidateItemPurchaseConditionUnprocessableEntity{}
}

/*PublicValidateItemPurchaseConditionUnprocessableEntity handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicValidateItemPurchaseConditionUnprocessableEntity struct {
	Payload *platformclientmodels.ValidationErrorEntity
}

func (o *PublicValidateItemPurchaseConditionUnprocessableEntity) Error() string {
	return fmt.Sprintf("[POST /platform/public/namespaces/{namespace}/items/purchase/conditions/validate][%d] publicValidateItemPurchaseConditionUnprocessableEntity  %+v", 422, o.ToJSONString())
}

func (o *PublicValidateItemPurchaseConditionUnprocessableEntity) ToJSONString() string {
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

func (o *PublicValidateItemPurchaseConditionUnprocessableEntity) GetPayload() *platformclientmodels.ValidationErrorEntity {
	return o.Payload
}

func (o *PublicValidateItemPurchaseConditionUnprocessableEntity) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ValidationErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
