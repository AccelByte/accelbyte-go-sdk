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

// AdminCreateExtensionCategoryReader is a Reader for the AdminCreateExtensionCategory structure.
type AdminCreateExtensionCategoryReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCreateExtensionCategoryReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 201:
		result := NewAdminCreateExtensionCategoryCreated()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCreateExtensionCategoryBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 500:
		result := NewAdminCreateExtensionCategoryInternalServerError()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested POST /reporting/v1/admin/extensionCategories returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCreateExtensionCategoryCreated creates a AdminCreateExtensionCategoryCreated with default headers values
func NewAdminCreateExtensionCategoryCreated() *AdminCreateExtensionCategoryCreated {
	return &AdminCreateExtensionCategoryCreated{}
}

/*AdminCreateExtensionCategoryCreated handles this case with default header values.


 */
type AdminCreateExtensionCategoryCreated struct {
	Payload *reportingclientmodels.RestapiExtensionCategoryAPIResponse
}

func (o *AdminCreateExtensionCategoryCreated) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/extensionCategories][%d] adminCreateExtensionCategoryCreated  %+v", 201, o.ToJSONString())
}

func (o *AdminCreateExtensionCategoryCreated) ToJSONString() string {
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

func (o *AdminCreateExtensionCategoryCreated) GetPayload() *reportingclientmodels.RestapiExtensionCategoryAPIResponse {
	return o.Payload
}

func (o *AdminCreateExtensionCategoryCreated) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(reportingclientmodels.RestapiExtensionCategoryAPIResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCreateExtensionCategoryBadRequest creates a AdminCreateExtensionCategoryBadRequest with default headers values
func NewAdminCreateExtensionCategoryBadRequest() *AdminCreateExtensionCategoryBadRequest {
	return &AdminCreateExtensionCategoryBadRequest{}
}

/*AdminCreateExtensionCategoryBadRequest handles this case with default header values.


 */
type AdminCreateExtensionCategoryBadRequest struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminCreateExtensionCategoryBadRequest) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/extensionCategories][%d] adminCreateExtensionCategoryBadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCreateExtensionCategoryBadRequest) ToJSONString() string {
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

func (o *AdminCreateExtensionCategoryBadRequest) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminCreateExtensionCategoryBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewAdminCreateExtensionCategoryInternalServerError creates a AdminCreateExtensionCategoryInternalServerError with default headers values
func NewAdminCreateExtensionCategoryInternalServerError() *AdminCreateExtensionCategoryInternalServerError {
	return &AdminCreateExtensionCategoryInternalServerError{}
}

/*AdminCreateExtensionCategoryInternalServerError handles this case with default header values.


 */
type AdminCreateExtensionCategoryInternalServerError struct {
	Payload *reportingclientmodels.RestapiErrorResponse
}

func (o *AdminCreateExtensionCategoryInternalServerError) Error() string {
	return fmt.Sprintf("[POST /reporting/v1/admin/extensionCategories][%d] adminCreateExtensionCategoryInternalServerError  %+v", 500, o.ToJSONString())
}

func (o *AdminCreateExtensionCategoryInternalServerError) ToJSONString() string {
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

func (o *AdminCreateExtensionCategoryInternalServerError) GetPayload() *reportingclientmodels.RestapiErrorResponse {
	return o.Payload
}

func (o *AdminCreateExtensionCategoryInternalServerError) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
