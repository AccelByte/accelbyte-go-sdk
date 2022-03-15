// Code generated by go-swagger; DO NOT EDIT.

package season

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"fmt"
	"io"
	"io/ioutil"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// DeleteSeasonReader is a Reader for the DeleteSeason structure.
type DeleteSeasonReader struct {
	formats strfmt.Registry
}

// ReadResponse reads a server response into the received o.
func (o *DeleteSeasonReader) ReadResponse(response runtime.ClientResponse, consumer runtime.Consumer) (interface{}, error) {
	switch response.Code() {
	case 204:
		result := NewDeleteSeasonNoContent()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 400:
		result := NewDeleteSeasonBadRequest()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 404:
		result := NewDeleteSeasonNotFound()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil
	case 409:
		result := NewDeleteSeasonConflict()
		if err := result.readResponse(response, consumer, o.formats); err != nil {
			return nil, err
		}
		return result, nil

	default:
		data, err := ioutil.ReadAll(response.Body())
		if err != nil {
			return nil, err
		}

		return nil, fmt.Errorf("Requested DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId} returns an error %d: %s", response.Code(), string(data))
	}
}

// NewDeleteSeasonNoContent creates a DeleteSeasonNoContent with default headers values
func NewDeleteSeasonNoContent() *DeleteSeasonNoContent {
	return &DeleteSeasonNoContent{}
}

/*DeleteSeasonNoContent handles this case with default header values.

  Delete season successfully
*/
type DeleteSeasonNoContent struct {
}

func (o *DeleteSeasonNoContent) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] deleteSeasonNoContent ", 204)
}

func (o *DeleteSeasonNoContent) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	return nil
}

// NewDeleteSeasonBadRequest creates a DeleteSeasonBadRequest with default headers values
func NewDeleteSeasonBadRequest() *DeleteSeasonBadRequest {
	return &DeleteSeasonBadRequest{}
}

/*DeleteSeasonBadRequest handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>20026</td><td>publisher namespace not allowed</td></tr></table>
*/
type DeleteSeasonBadRequest struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteSeasonBadRequest) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] deleteSeasonBadRequest  %+v", 400, o.Payload)
}

func (o *DeleteSeasonBadRequest) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteSeasonBadRequest) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSeasonNotFound creates a DeleteSeasonNotFound with default headers values
func NewDeleteSeasonNotFound() *DeleteSeasonNotFound {
	return &DeleteSeasonNotFound{}
}

/*DeleteSeasonNotFound handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49143</td><td>Season [{seasonId}] does not exist in namespace [{namespace}]</td></tr></table>
*/
type DeleteSeasonNotFound struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteSeasonNotFound) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] deleteSeasonNotFound  %+v", 404, o.Payload)
}

func (o *DeleteSeasonNotFound) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteSeasonNotFound) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}

// NewDeleteSeasonConflict creates a DeleteSeasonConflict with default headers values
func NewDeleteSeasonConflict() *DeleteSeasonConflict {
	return &DeleteSeasonConflict{}
}

/*DeleteSeasonConflict handles this case with default header values.

  <table><tr><td>ErrorCode</td><td>ErrorMessage</td></tr><tr><td>49171</td><td>Invalid season status [{status}]</td></tr></table>
*/
type DeleteSeasonConflict struct {
	Payload *seasonpassclientmodels.ErrorEntity
}

func (o *DeleteSeasonConflict) Error() string {
	return fmt.Sprintf("[DELETE /seasonpass/admin/namespaces/{namespace}/seasons/{seasonId}][%d] deleteSeasonConflict  %+v", 409, o.Payload)
}

func (o *DeleteSeasonConflict) GetPayload() *seasonpassclientmodels.ErrorEntity {
	return o.Payload
}

func (o *DeleteSeasonConflict) readResponse(response runtime.ClientResponse, consumer runtime.Consumer, formats strfmt.Registry) error {

	o.Payload = new(seasonpassclientmodels.ErrorEntity)

	// response payload
	if err := consumer.Consume(response.Body(), o.Payload); err != nil && err != io.EOF {
		return err
	}

	return nil
}
