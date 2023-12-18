// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_channel

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// AdminCreateChannelReader is a Reader for the AdminCreateChannel structure.
type AdminCreateChannelReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateChannelReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateChannelCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateChannelBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCreateChannelUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewAdminCreateChannelConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateChannelInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ugc/v1/admin/namespaces/{namespace}/channels returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateChannelCreated creates a AdminCreateChannelCreated with default headers values
func NewAdminCreateChannelCreated() *AdminCreateChannelCreated {
	return &AdminCreateChannelCreated{}
}

/*AdminCreateChannelCreated handles this case with default header values.

  Channel created
*/
type AdminCreateChannelCreated struct {
	Payload *ugcclientmodels.ModelsChannelResponse
}

func (o *AdminCreateChannelCreated) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels][%d] adminCreateChannelCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateChannelCreated) ToJSONString() string {
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

func (o *AdminCreateChannelCreated) GetPayload() *ugcclientmodels.ModelsChannelResponse {
	return o.Payload
}

func (o *AdminCreateChannelCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ModelsChannelResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChannelBadRequest creates a AdminCreateChannelBadRequest with default headers values
func NewAdminCreateChannelBadRequest() *AdminCreateChannelBadRequest {
	return &AdminCreateChannelBadRequest{}
}

/*AdminCreateChannelBadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770503</td><td>Invalid channel {ID}: should uuid without hypen</td></tr></table>
*/
type AdminCreateChannelBadRequest struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateChannelBadRequest) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels][%d] adminCreateChannelBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateChannelBadRequest) ToJSONString() string {
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

func (o *AdminCreateChannelBadRequest) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChannelBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChannelUnauthorized creates a AdminCreateChannelUnauthorized with default headers values
func NewAdminCreateChannelUnauthorized() *AdminCreateChannelUnauthorized {
	return &AdminCreateChannelUnauthorized{}
}

/*AdminCreateChannelUnauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCreateChannelUnauthorized struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateChannelUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels][%d] adminCreateChannelUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCreateChannelUnauthorized) ToJSONString() string {
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

func (o *AdminCreateChannelUnauthorized) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChannelUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChannelConflict creates a AdminCreateChannelConflict with default headers values
func NewAdminCreateChannelConflict() *AdminCreateChannelConflict {
	return &AdminCreateChannelConflict{}
}

/*AdminCreateChannelConflict handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770504</td><td>Channel already exist</td></tr></table>
*/
type AdminCreateChannelConflict struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateChannelConflict) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels][%d] adminCreateChannelConflict  %+v", 409, o.ToJSONString())
}

func (o *AdminCreateChannelConflict) ToJSONString() string {
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

func (o *AdminCreateChannelConflict) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChannelConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateChannelInternalServerError creates a AdminCreateChannelInternalServerError with default headers values
func NewAdminCreateChannelInternalServerError() *AdminCreateChannelInternalServerError {
	return &AdminCreateChannelInternalServerError{}
}

/*AdminCreateChannelInternalServerError handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>770502</td><td>Unable to save channel</td></tr></table>
*/
type AdminCreateChannelInternalServerError struct {
	Payload *ugcclientmodels.ResponseError
}

func (o *AdminCreateChannelInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ugc/v1/admin/namespaces/{namespace}/channels][%d] adminCreateChannelInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateChannelInternalServerError) ToJSONString() string {
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

func (o *AdminCreateChannelInternalServerError) GetPayload() *ugcclientmodels.ResponseError {
	return o.Payload
}

func (o *AdminCreateChannelInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(ugcclientmodels.ResponseError)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
