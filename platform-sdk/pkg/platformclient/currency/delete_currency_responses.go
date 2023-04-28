// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package currency

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

// DeleteCurrencyReader is a Reader for the DeleteCurrency structure.
type DeleteCurrencyReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteCurrencyReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDeleteCurrencyOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteCurrencyNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /platform/admin/namespaces/{namespace}/currencies/{currencyCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteCurrencyOK creates a DeleteCurrencyOK with default headers values
func NewDeleteCurrencyOK() *DeleteCurrencyOK {
	return &DeleteCurrencyOK{}
}

/*DeleteCurrencyOK handles this case with default header values.

  successful operation
*/
type DeleteCurrencyOK struct {
	Payload *platformclientmodels.CurrencyInfo
}

func (o *DeleteCurrencyOK) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/currencies/{currencyCode}][%d] deleteCurrencyOK  %+v", 200, o.ToJSONString())
}

func (o *DeleteCurrencyOK) ToJSONString() string {
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

func (o *DeleteCurrencyOK) GetPayload() *platformclientmodels.CurrencyInfo {
	return o.Payload
}

func (o *DeleteCurrencyOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.CurrencyInfo)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteCurrencyNotFound creates a DeleteCurrencyNotFound with default headers values
func NewDeleteCurrencyNotFound() *DeleteCurrencyNotFound {
	return &DeleteCurrencyNotFound{}
}

/*DeleteCurrencyNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>36141</td><td>Currency [{currencyCode}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DeleteCurrencyNotFound struct {
	Payload *platformclientmodels.ErrorEntity
}

func (o *DeleteCurrencyNotFound) Error() string {
	return fmt.Sprintf("[DELETE /platform/admin/namespaces/{namespace}/currencies/{currencyCode}][%d] deleteCurrencyNotFound  %+v", 404, o.ToJSONString())
}

func (o *DeleteCurrencyNotFound) ToJSONString() string {
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

func (o *DeleteCurrencyNotFound) GetPayload() *platformclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteCurrencyNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(platformclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
