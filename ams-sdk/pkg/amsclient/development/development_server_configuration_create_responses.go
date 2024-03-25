// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package development

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// DevelopmentServerConfigurationCreateReader is a Reader for the DevelopmentServerConfigurationCreate structure.
type DevelopmentServerConfigurationCreateReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DevelopmentServerConfigurationCreateReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewDevelopmentServerConfigurationCreateCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDevelopmentServerConfigurationCreateBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewDevelopmentServerConfigurationCreateUnauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewDevelopmentServerConfigurationCreateForbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewDevelopmentServerConfigurationCreateInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /ams/v1/admin/namespaces/{namespace}/development/server-configurations returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDevelopmentServerConfigurationCreateCreated creates a DevelopmentServerConfigurationCreateCreated with default headers values
func NewDevelopmentServerConfigurationCreateCreated() *DevelopmentServerConfigurationCreateCreated {
	return &DevelopmentServerConfigurationCreateCreated{}
}

/*DevelopmentServerConfigurationCreateCreated handles this case with default header values.

  development server configuration created
*/
type DevelopmentServerConfigurationCreateCreated struct {
	Payload *amsclientmodels.APIDevelopmentServerConfigurationCreateResponse
}

func (o *DevelopmentServerConfigurationCreateCreated) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationCreateCreated  %+v", 201, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationCreateCreated) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationCreateCreated) GetPayload() *amsclientmodels.APIDevelopmentServerConfigurationCreateResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationCreateCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.APIDevelopmentServerConfigurationCreateResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationCreateBadRequest creates a DevelopmentServerConfigurationCreateBadRequest with default headers values
func NewDevelopmentServerConfigurationCreateBadRequest() *DevelopmentServerConfigurationCreateBadRequest {
	return &DevelopmentServerConfigurationCreateBadRequest{}
}

/*DevelopmentServerConfigurationCreateBadRequest handles this case with default header values.

  bad request
*/
type DevelopmentServerConfigurationCreateBadRequest struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationCreateBadRequest) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationCreateBadRequest  %+v", 400, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationCreateBadRequest) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationCreateBadRequest) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationCreateBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationCreateUnauthorized creates a DevelopmentServerConfigurationCreateUnauthorized with default headers values
func NewDevelopmentServerConfigurationCreateUnauthorized() *DevelopmentServerConfigurationCreateUnauthorized {
	return &DevelopmentServerConfigurationCreateUnauthorized{}
}

/*DevelopmentServerConfigurationCreateUnauthorized handles this case with default header values.

  no authorization provided
*/
type DevelopmentServerConfigurationCreateUnauthorized struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationCreateUnauthorized) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationCreateUnauthorized  %+v", 401, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationCreateUnauthorized) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationCreateUnauthorized) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationCreateUnauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationCreateForbidden creates a DevelopmentServerConfigurationCreateForbidden with default headers values
func NewDevelopmentServerConfigurationCreateForbidden() *DevelopmentServerConfigurationCreateForbidden {
	return &DevelopmentServerConfigurationCreateForbidden{}
}

/*DevelopmentServerConfigurationCreateForbidden handles this case with default header values.

  insufficient permissions
*/
type DevelopmentServerConfigurationCreateForbidden struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationCreateForbidden) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationCreateForbidden  %+v", 403, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationCreateForbidden) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationCreateForbidden) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationCreateForbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDevelopmentServerConfigurationCreateInternalServerError creates a DevelopmentServerConfigurationCreateInternalServerError with default headers values
func NewDevelopmentServerConfigurationCreateInternalServerError() *DevelopmentServerConfigurationCreateInternalServerError {
	return &DevelopmentServerConfigurationCreateInternalServerError{}
}

/*DevelopmentServerConfigurationCreateInternalServerError handles this case with default header values.

  internal server error
*/
type DevelopmentServerConfigurationCreateInternalServerError struct {
	Payload *amsclientmodels.ResponseErrorResponse
}

func (o *DevelopmentServerConfigurationCreateInternalServerError) Error() string {
	return fmt.Sprintf("[POST /ams/v1/admin/namespaces/{namespace}/development/server-configurations][%d] developmentServerConfigurationCreateInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *DevelopmentServerConfigurationCreateInternalServerError) ToJSONString() string {
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

func (o *DevelopmentServerConfigurationCreateInternalServerError) GetPayload() *amsclientmodels.ResponseErrorResponse {
	return o.Payload
}

func (o *DevelopmentServerConfigurationCreateInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(amsclientmodels.ResponseErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
