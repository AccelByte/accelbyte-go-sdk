// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifact_upload_process_queue

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/dsartifact-sdk/pkg/dsartifactclientmodels"
)

// DeleteNodeByIDReader is a Reader for the DeleteNodeByID structure.
type DeleteNodeByIDReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteNodeByIDReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteNodeByIDNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteNodeByIDBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDeleteNodeByIDInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /dsartifact/artifacts/nodes/ipaddresses returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteNodeByIDNoContent creates a DeleteNodeByIDNoContent with default headers values
func NewDeleteNodeByIDNoContent() *DeleteNodeByIDNoContent {
	return &DeleteNodeByIDNoContent{}
}

/*DeleteNodeByIDNoContent handles this case with default header values.

  delete queue success.
*/
type DeleteNodeByIDNoContent struct {
}

func (o *DeleteNodeByIDNoContent) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/artifacts/nodes/ipaddresses][%d] deleteNodeByIdNoContent ", 204)
}

func (o *DeleteNodeByIDNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}

// NewDeleteNodeByIDBadRequest creates a DeleteNodeByIDBadRequest with default headers values
func NewDeleteNodeByIDBadRequest() *DeleteNodeByIDBadRequest {
	return &DeleteNodeByIDBadRequest{}
}

/*DeleteNodeByIDBadRequest handles this case with default header values.

  Bad Request
*/
type DeleteNodeByIDBadRequest struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DeleteNodeByIDBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/artifacts/nodes/ipaddresses][%d] deleteNodeByIdBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DeleteNodeByIDBadRequest) ToJSONString() string {
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

func (o *DeleteNodeByIDBadRequest) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteNodeByIDBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteNodeByIDInternalServerError creates a DeleteNodeByIDInternalServerError with default headers values
func NewDeleteNodeByIDInternalServerError() *DeleteNodeByIDInternalServerError {
	return &DeleteNodeByIDInternalServerError{}
}

/*DeleteNodeByIDInternalServerError handles this case with default header values.

  Internal Server Error
*/
type DeleteNodeByIDInternalServerError struct {
	Payload *dsartifactclientmodels.ResponseError
}

func (o *DeleteNodeByIDInternalServerError) Error() string {
	return fmt.Sprintf("[DELETE /dsartifact/artifacts/nodes/ipaddresses][%d] deleteNodeByIdInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DeleteNodeByIDInternalServerError) ToJSONString() string {
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

func (o *DeleteNodeByIDInternalServerError) GetPayload() *dsartifactclientmodels.ResponseError {
	return o.Payload
}

func (o *DeleteNodeByIDInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(dsartifactclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
