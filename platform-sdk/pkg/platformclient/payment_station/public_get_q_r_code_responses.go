// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// PublicGetQRCodeReader is a Reader for the PublicGetQRCode structure.
type PublicGetQRCodeReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetQRCodeReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetQRCodeOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/public/namespaces/{namespace}/payment/qrcode returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetQRCodeOK creates a PublicGetQRCodeOK with default headers values
func NewPublicGetQRCodeOK(writer io.Writer) *PublicGetQRCodeOK {
	return &PublicGetQRCodeOK{
		Payload: writer,
	}
}

/*PublicGetQRCodeOK handles this case with default header values.

  Successful operation
*/
type PublicGetQRCodeOK struct {
	Payload io.Writer
}

func (o *PublicGetQRCodeOK) Error() string {
	return fmt.Sprintf("[GET /platform/public/namespaces/{namespace}/payment/qrcode][%d] publicGetQRCodeOK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetQRCodeOK) ToJSONString() string {
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

func (o *PublicGetQRCodeOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *PublicGetQRCodeOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
