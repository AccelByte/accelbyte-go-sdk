// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package campaign

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// DownloadReader is a Reader for the Download structure.
type DownloadReader struct {
	formats strfmt.Registry
	writer  io.Writer
}

// ReadResponse reads a server response into the received o.
func (o *DownloadReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewDownloadOK(o.writer)
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDownloadOK creates a DownloadOK with default headers values
func NewDownloadOK(writer io.Writer) *DownloadOK {
	return &DownloadOK{
		Payload: writer,
	}
}

/*DownloadOK handles this case with default header values.

  Successful operation
*/
type DownloadOK struct {
	Payload io.Writer
}

func (o *DownloadOK) Error() string {
	return fmt.Sprintf("[GET /platform/admin/namespaces/{namespace}/codes/campaigns/{campaignId}/codes.csv][%d] downloadOK  %+v", 200, o.ToJSONString())
}

func (o *DownloadOK) ToJSONString() string {
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

func (o *DownloadOK) GetPayload() io.Writer {
	return o.Payload
}

func (o *DownloadOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
