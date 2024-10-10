// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

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

// AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader is a Reader for the AdminCheckThirdPartyLoginPlatformAvailabilityV3 structure.
type AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminCheckThirdPartyLoginPlatformAvailabilityV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/admin/platforms/{platformId}/availability returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3OK creates a AdminCheckThirdPartyLoginPlatformAvailabilityV3OK with default headers values
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3OK() *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK {
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3OK{}
}

/*AdminCheckThirdPartyLoginPlatformAvailabilityV3OK handles this case with default header values.

  Platform Availability Check Retrieved
*/
type AdminCheckThirdPartyLoginPlatformAvailabilityV3OK struct {
	Payload *iamclientmodels.ModelCheckAvailabilityResponse
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/platforms/{platformId}/availability][%d] adminCheckThirdPartyLoginPlatformAvailabilityV3OK  %+v", 200, o.ToJSONString())
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK) ToJSONString() string {
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

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK) GetPayload() *iamclientmodels.ModelCheckAvailabilityResponse {
	return o.Payload
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelCheckAvailabilityResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest creates a AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest with default headers values
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest() *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest {
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest{}
}

/*AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>10226</td><td>third party platform is not supported</td></tr></table>
*/
type AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/platforms/{platformId}/availability][%d] adminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest  %+v", 400, o.ToJSONString())
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest) ToJSONString() string {
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

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized creates a AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized with default headers values
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized() *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized {
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized{}
}

/*AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/platforms/{platformId}/availability][%d] adminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized) ToJSONString() string {
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

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden creates a AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden with default headers values
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden() *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden {
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden{}
}

/*AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20013</td><td>insufficient permissions</td></tr></table>
*/
type AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden) Error() string {
	return fmt.Sprintf("[GET /iam/v3/admin/platforms/{platformId}/availability][%d] adminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden  %+v", 403, o.ToJSONString())
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden) ToJSONString() string {
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

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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
