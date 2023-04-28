// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclientmodels"
)

// ListServerPerNamespaceReader is a Reader for the ListServerPerNamespace structure.
type ListServerPerNamespaceReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *ListServerPerNamespaceReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewListServerPerNamespaceOK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewListServerPerNamespaceInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /qosm/public/namespaces/{namespace}/qos returns an error %d: %s", response.Code(), string(data))
	}
}

// NewListServerPerNamespaceOK creates a ListServerPerNamespaceOK with default headers values
func NewListServerPerNamespaceOK() *ListServerPerNamespaceOK {
	return &ListServerPerNamespaceOK{}
}

/*ListServerPerNamespaceOK handles this case with default header values.

  list of QoS services returned
*/
type ListServerPerNamespaceOK struct {
	Payload *qosmclientmodels.ModelsListServerResponse
}

func (o *ListServerPerNamespaceOK) Error() string {
	return fmt.Sprintf("[GET /qosm/public/namespaces/{namespace}/qos][%d] listServerPerNamespaceOK  %+v", 200, o.ToJSONString())
}

func (o *ListServerPerNamespaceOK) ToJSONString() string {
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

func (o *ListServerPerNamespaceOK) GetPayload() *qosmclientmodels.ModelsListServerResponse {
	return o.Payload
}

func (o *ListServerPerNamespaceOK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(qosmclientmodels.ModelsListServerResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewListServerPerNamespaceInternalServerError creates a ListServerPerNamespaceInternalServerError with default headers values
func NewListServerPerNamespaceInternalServerError() *ListServerPerNamespaceInternalServerError {
	return &ListServerPerNamespaceInternalServerError{}
}

/*ListServerPerNamespaceInternalServerError handles this case with default header values.

  Internal Server Error
*/
type ListServerPerNamespaceInternalServerError struct {
	Payload *qosmclientmodels.ResponseError
}

func (o *ListServerPerNamespaceInternalServerError) Error() string {
	return fmt.Sprintf("[GET /qosm/public/namespaces/{namespace}/qos][%d] listServerPerNamespaceInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *ListServerPerNamespaceInternalServerError) ToJSONString() string {
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

func (o *ListServerPerNamespaceInternalServerError) GetPayload() *qosmclientmodels.ResponseError {
	return o.Payload
}

func (o *ListServerPerNamespaceInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(qosmclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
