// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package clients

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// DeleteClientReader is a Reader for the DeleteClient structure.
type DeleteClientReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteClientReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteClientNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDeleteClientUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDeleteClientForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteClientNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /iam/clients/{clientId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteClientNoContent creates a DeleteClientNoContent with default headers values
func NewDeleteClientNoContent() *DeleteClientNoContent {
	return &DeleteClientNoContent{}
}

/*DeleteClientNoContent handles this case with default header values.

  Operation succeeded
*/
type DeleteClientNoContent struct {
}

func (o *DeleteClientNoContent) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}][%d] deleteClientNoContent ", 204)
}

func (o *DeleteClientNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteClientUnauthorized creates a DeleteClientUnauthorized with default headers values
func NewDeleteClientUnauthorized() *DeleteClientUnauthorized {
	return &DeleteClientUnauthorized{}
}

/*DeleteClientUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type DeleteClientUnauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteClientUnauthorized) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}][%d] deleteClientUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DeleteClientUnauthorized) ToJSONString() string {
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

func (o *DeleteClientUnauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteClientUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteClientForbidden creates a DeleteClientForbidden with default headers values
func NewDeleteClientForbidden() *DeleteClientForbidden {
	return &DeleteClientForbidden{}
}

/*DeleteClientForbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type DeleteClientForbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *DeleteClientForbidden) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}][%d] deleteClientForbidden  %+v", 403, o.ToJSONString())
}

func (o *DeleteClientForbidden) ToJSONString() string {
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

func (o *DeleteClientForbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *DeleteClientForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.RestErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteClientNotFound creates a DeleteClientNotFound with default headers values
func NewDeleteClientNotFound() *DeleteClientNotFound {
	return &DeleteClientNotFound{}
}

/*DeleteClientNotFound handles this case with default header values.

  Data not found
*/
type DeleteClientNotFound struct {
}

func (o *DeleteClientNotFound) Error() string {
	return fmt.Sprintf("[DELETE /iam/clients/{clientId}][%d] deleteClientNotFound ", 404)
}

func (o *DeleteClientNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
