// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// PublicGetRoleV3Reader is a Reader for the PublicGetRoleV3 structure.
type PublicGetRoleV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetRoleV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetRoleV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewPublicGetRoleV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetRoleV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/roles/{roleId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetRoleV3OK creates a PublicGetRoleV3OK with default headers values
func NewPublicGetRoleV3OK() *PublicGetRoleV3OK {
	return &PublicGetRoleV3OK{}
}

/*PublicGetRoleV3OK handles this case with default header values.

  OK
*/
type PublicGetRoleV3OK struct {
	Payload *iamclientmodels.ModelRoleResponse
}

func (o *PublicGetRoleV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/roles/{roleId}][%d] publicGetRoleV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetRoleV3OK) ToJSONString() string {
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

func (o *PublicGetRoleV3OK) GetPayload() *iamclientmodels.ModelRoleResponse {
	return o.Payload
}

func (o *PublicGetRoleV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelRoleResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetRoleV3BadRequest creates a PublicGetRoleV3BadRequest with default headers values
func NewPublicGetRoleV3BadRequest() *PublicGetRoleV3BadRequest {
	return &PublicGetRoleV3BadRequest{}
}

/*PublicGetRoleV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20002</td><td>validation error</td></tr></table>
*/
type PublicGetRoleV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetRoleV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/roles/{roleId}][%d] publicGetRoleV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *PublicGetRoleV3BadRequest) ToJSONString() string {
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

func (o *PublicGetRoleV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetRoleV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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

// NewPublicGetRoleV3NotFound creates a PublicGetRoleV3NotFound with default headers values
func NewPublicGetRoleV3NotFound() *PublicGetRoleV3NotFound {
	return &PublicGetRoleV3NotFound{}
}

/*PublicGetRoleV3NotFound handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10456</td><td>role not found</td></tr></table>
*/
type PublicGetRoleV3NotFound struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetRoleV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/roles/{roleId}][%d] publicGetRoleV3NotFound  %+v", 404, o.ToJSONString())
}

func (o *PublicGetRoleV3NotFound) ToJSONString() string {
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

func (o *PublicGetRoleV3NotFound) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetRoleV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {
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
