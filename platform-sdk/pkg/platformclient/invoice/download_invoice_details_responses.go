// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package invoice

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DownloadInvoiceDetailsReader is a Reader for the DownloadInvoiceDetails structure.
type DownloadInvoiceDetailsReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *DownloadInvoiceDetailsReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDownloadInvoiceDetailsOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/invoice/details.csv returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDownloadInvoiceDetailsOK creates a DownloadInvoiceDetailsOK with default headers values
func NewDownloadInvoiceDetailsOK(writer io.Writer) *DownloadInvoiceDetailsOK {
	return &DownloadInvoiceDetailsOK{
		Payload: writer,
	}
}

/*DownloadInvoiceDetailsOK handles this case with default header values.

  Successful operation
*/
type DownloadInvoiceDetailsOK struct {
	Payload io.Writer
}

func (o *DownloadInvoiceDetailsOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/invoice/details.csv][%d] downloadInvoiceDetailsOK  %+v", 200, o.ToJSONString())
}

func (o *DownloadInvoiceDetailsOK) ToJSONString() string {
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

func (o *DownloadInvoiceDetailsOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *DownloadInvoiceDetailsOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
