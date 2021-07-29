// Code generated by go-swagger; DO NOT EDIT.

package users

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// AdminUpdateAgeRestrictionConfigV2Reader is a Reader for the AdminUpdateAgeRestrictionConfigV2 structure.
type AdminUpdateAgeRestrictionConfigV2Reader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *AdminUpdateAgeRestrictionConfigV2Reader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 200:
		result := NewAdminUpdateAgeRestrictionConfigV2OK()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewAdminUpdateAgeRestrictionConfigV2BadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 401:
		result := NewAdminUpdateAgeRestrictionConfigV2Unauthorized()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 403:
		result := NewAdminUpdateAgeRestrictionConfigV2Forbidden()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewAdminUpdateAgeRestrictionConfigV2NotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested PATCH /iam/v2/admin/namespaces/{namespace}/agerestrictions returns an error %d: %s", response.Code(), string(data))
	}
}

// NewAdminUpdateAgeRestrictionConfigV2OK creates a AdminUpdateAgeRestrictionConfigV2OK with default headers values
func NewAdminUpdateAgeRestrictionConfigV2OK() *AdminUpdateAgeRestrictionConfigV2OK {
	return &AdminUpdateAgeRestrictionConfigV2OK{}
}

/*AdminUpdateAgeRestrictionConfigV2OK handles this case with default header values.

  OK
*/
type AdminUpdateAgeRestrictionConfigV2OK struct {
	Payload *iamclientmodels.ModelAgeRestrictionResponse
}

func (o *AdminUpdateAgeRestrictionConfigV2OK) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV2OK  %+v", 200, o.Payload)
}

func (o *AdminUpdateAgeRestrictionConfigV2OK) GetPayload() *iamclientmodels.ModelAgeRestrictionResponse {
	return o.Payload
}

func (o *AdminUpdateAgeRestrictionConfigV2OK) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(iamclientmodels.ModelAgeRestrictionResponse)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV2BadRequest creates a AdminUpdateAgeRestrictionConfigV2BadRequest with default headers values
func NewAdminUpdateAgeRestrictionConfigV2BadRequest() *AdminUpdateAgeRestrictionConfigV2BadRequest {
	return &AdminUpdateAgeRestrictionConfigV2BadRequest{}
}

/*AdminUpdateAgeRestrictionConfigV2BadRequest handles this case with default header values.

  Invalid request
*/
type AdminUpdateAgeRestrictionConfigV2BadRequest struct {
}

func (o *AdminUpdateAgeRestrictionConfigV2BadRequest) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV2BadRequest ", 400)
}

func (o *AdminUpdateAgeRestrictionConfigV2BadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV2Unauthorized creates a AdminUpdateAgeRestrictionConfigV2Unauthorized with default headers values
func NewAdminUpdateAgeRestrictionConfigV2Unauthorized() *AdminUpdateAgeRestrictionConfigV2Unauthorized {
	return &AdminUpdateAgeRestrictionConfigV2Unauthorized{}
}

/*AdminUpdateAgeRestrictionConfigV2Unauthorized handles this case with default header values.

  Unauthorized access
*/
type AdminUpdateAgeRestrictionConfigV2Unauthorized struct {
}

func (o *AdminUpdateAgeRestrictionConfigV2Unauthorized) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV2Unauthorized ", 401)
}

func (o *AdminUpdateAgeRestrictionConfigV2Unauthorized) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV2Forbidden creates a AdminUpdateAgeRestrictionConfigV2Forbidden with default headers values
func NewAdminUpdateAgeRestrictionConfigV2Forbidden() *AdminUpdateAgeRestrictionConfigV2Forbidden {
	return &AdminUpdateAgeRestrictionConfigV2Forbidden{}
}

/*AdminUpdateAgeRestrictionConfigV2Forbidden handles this case with default header values.

  Forbidden
*/
type AdminUpdateAgeRestrictionConfigV2Forbidden struct {
}

func (o *AdminUpdateAgeRestrictionConfigV2Forbidden) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV2Forbidden ", 403)
}

func (o *AdminUpdateAgeRestrictionConfigV2Forbidden) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewAdminUpdateAgeRestrictionConfigV2NotFound creates a AdminUpdateAgeRestrictionConfigV2NotFound with default headers values
func NewAdminUpdateAgeRestrictionConfigV2NotFound() *AdminUpdateAgeRestrictionConfigV2NotFound {
	return &AdminUpdateAgeRestrictionConfigV2NotFound{}
}

/*AdminUpdateAgeRestrictionConfigV2NotFound handles this case with default header values.

  Data not found
*/
type AdminUpdateAgeRestrictionConfigV2NotFound struct {
}

func (o *AdminUpdateAgeRestrictionConfigV2NotFound) Error() string {
	return fmt.Sprintf("[PATCH /iam/v2/admin/namespaces/{namespace}/agerestrictions][%d] adminUpdateAgeRestrictionConfigV2NotFound ", 404)
}

func (o *AdminUpdateAgeRestrictionConfigV2NotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}
