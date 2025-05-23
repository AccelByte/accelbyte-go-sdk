// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// PublicGetCountryAgeRestrictionV3Reader is a Reader for the PublicGetCountryAgeRestrictionV3 structure.
type PublicGetCountryAgeRestrictionV3Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *PublicGetCountryAgeRestrictionV3Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewPublicGetCountryAgeRestrictionV3OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewPublicGetCountryAgeRestrictionV3Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewPublicGetCountryAgeRestrictionV3NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested GET /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewPublicGetCountryAgeRestrictionV3OK creates a PublicGetCountryAgeRestrictionV3OK with default headers values
func NewPublicGetCountryAgeRestrictionV3OK() *PublicGetCountryAgeRestrictionV3OK {
	return &PublicGetCountryAgeRestrictionV3OK{}
}

/*PublicGetCountryAgeRestrictionV3OK handles this case with default header values.

  OK
*/
type PublicGetCountryAgeRestrictionV3OK struct {
	Payload *iamclientmodels.ModelCountryV3Response
}

func (o *PublicGetCountryAgeRestrictionV3OK) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] publicGetCountryAgeRestrictionV3OK  %+v", 200, o.ToJSONString())
}

func (o *PublicGetCountryAgeRestrictionV3OK) ToJSONString() string {
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

func (o *PublicGetCountryAgeRestrictionV3OK) GetPayload() *iamclientmodels.ModelCountryV3Response {
	return o.Payload
}

func (o *PublicGetCountryAgeRestrictionV3OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	o.Payload = new(iamclientmodels.ModelCountryV3Response)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewPublicGetCountryAgeRestrictionV3Unauthorized creates a PublicGetCountryAgeRestrictionV3Unauthorized with default headers values
func NewPublicGetCountryAgeRestrictionV3Unauthorized() *PublicGetCountryAgeRestrictionV3Unauthorized {
	return &PublicGetCountryAgeRestrictionV3Unauthorized{}
}

/*PublicGetCountryAgeRestrictionV3Unauthorized handles this case with default header values.

  <table><tr><td>errorCode</td><td>errorMessage</td></tr><tr><td>20001</td><td>unauthorized access</td></tr></table>
*/
type PublicGetCountryAgeRestrictionV3Unauthorized struct {
	Payload *iamclientmodels.RestErrorResponse
}

func (o *PublicGetCountryAgeRestrictionV3Unauthorized) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] publicGetCountryAgeRestrictionV3Unauthorized  %+v", 401, o.ToJSONString())
}

func (o *PublicGetCountryAgeRestrictionV3Unauthorized) ToJSONString() string {
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

func (o *PublicGetCountryAgeRestrictionV3Unauthorized) GetPayload() *iamclientmodels.RestErrorResponse {
	return o.Payload
}

func (o *PublicGetCountryAgeRestrictionV3Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

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

// NewPublicGetCountryAgeRestrictionV3NotFound creates a PublicGetCountryAgeRestrictionV3NotFound with default headers values
func NewPublicGetCountryAgeRestrictionV3NotFound() *PublicGetCountryAgeRestrictionV3NotFound {
	return &PublicGetCountryAgeRestrictionV3NotFound{}
}

/*PublicGetCountryAgeRestrictionV3NotFound handles this case with default header values.

  Data not found
*/
type PublicGetCountryAgeRestrictionV3NotFound struct {
}

func (o *PublicGetCountryAgeRestrictionV3NotFound) Error() string {
	return fmt.Sprintf("[GET /iam/v3/public/namespaces/{namespace}/agerestrictions/countries/{countryCode}][%d] publicGetCountryAgeRestrictionV3NotFound ", 404)
}

func (o *PublicGetCountryAgeRestrictionV3NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	// handle file responses
	contentDisposition := response.GetHeader("Content-Disposition")
	if strings.Contains(strings.ToLower(contentDisposition), "filename=") {
		consumer = runtime.ByteStreamConsumer()
	}

	return nil
}
