// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_extension_categories_and_auto_moderation_actions

import (
	"encoding/json"
	"fmt"
	"io"
	"io/ioutil"
	"strings"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// AdminCreateModActionReader is a Reader for the AdminCreateModAction structure.
type AdminCreateModActionReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateModActionReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateModActionCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateModActionBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateModActionInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/extensionActions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateModActionCreated creates a AdminCreateModActionCreated with default headers values
func NewAdminCreateModActionCreated() *AdminCreateModActionCreated {
	return &AdminCreateModActionCreated{}
}

/*AdminCreateModActionCreated handles this case with default header values.


 */
type AdminCreateModActionCreated struct {
	Payload *reportingclientmodels.RestapiActionAPIResponse
}

func (o *AdminCreateModActionCreated) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/extensionActions][%d] adminCreateModActionCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateModActionCreated) ToJSONString() string {
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

func (o *AdminCreateModActionCreated) GetPayload() *reportingclientmodels.RestapiActionAPIResponse {
	return o.Payload
}

func (o *AdminCreateModActionCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiActionAPIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateModActionBadRequest creates a AdminCreateModActionBadRequest with default headers values
func NewAdminCreateModActionBadRequest() *AdminCreateModActionBadRequest {
	return &AdminCreateModActionBadRequest{}
}

/*AdminCreateModActionBadRequest handles this case with default header values.


 */
type AdminCreateModActionBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminCreateModActionBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/extensionActions][%d] adminCreateModActionBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateModActionBadRequest) ToJSONString() string {
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

func (o *AdminCreateModActionBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminCreateModActionBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateModActionInternalServerError creates a AdminCreateModActionInternalServerError with default headers values
func NewAdminCreateModActionInternalServerError() *AdminCreateModActionInternalServerError {
	return &AdminCreateModActionInternalServerError{}
}

/*AdminCreateModActionInternalServerError handles this case with default header values.


 */
type AdminCreateModActionInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminCreateModActionInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/extensionActions][%d] adminCreateModActionInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateModActionInternalServerError) ToJSONString() string {
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

func (o *AdminCreateModActionInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminCreateModActionInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiErrorResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
