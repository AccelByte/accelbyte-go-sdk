// Code generated by go-swagger; DO NOT EDIT.

package public_group

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewGetGroupsParams creates a new GetGroupsParams object
// with the default values initialized.
func NewGetGroupsParams() *GetGroupsParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &GetGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGroupsParamsWithTimeout creates a new GetGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGroupsParamsWithTimeout(timeout time.Duration) *GetGroupsParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &GetGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewGetGroupsParamsWithContext creates a new GetGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGroupsParamsWithContext(ctx context.Context) *GetGroupsParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &GetGroupsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewGetGroupsParamsWithHTTPClient creates a new GetGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGroupsParamsWithHTTPClient(client *http.Client) *GetGroupsParams {
	var (
		limitDefault  = string("1000")
		offsetDefault = string("0")
	)
	return &GetGroupsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*GetGroupsParams contains all the parameters to send to the API endpoint
for the get groups operation typically these are written to a http.Request
*/
type GetGroupsParams struct {

	/*Limit
	  number of content per page

	*/
	Limit *string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Offset
	  the offset number to retrieve

	*/
	Offset *string
	/*UserID
	  user ID

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get groups params
func (o *GetGroupsParams) WithTimeout(timeout time.Duration) *GetGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get groups params
func (o *GetGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get groups params
func (o *GetGroupsParams) WithContext(ctx context.Context) *GetGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get groups params
func (o *GetGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get groups params
func (o *GetGroupsParams) WithHTTPClient(client *http.Client) *GetGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get groups params
func (o *GetGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithLimit adds the limit to the get groups params
func (o *GetGroupsParams) WithLimit(limit *string) *GetGroupsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get groups params
func (o *GetGroupsParams) SetLimit(limit *string) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the get groups params
func (o *GetGroupsParams) WithNamespace(namespace string) *GetGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get groups params
func (o *GetGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the get groups params
func (o *GetGroupsParams) WithOffset(offset *string) *GetGroupsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get groups params
func (o *GetGroupsParams) SetOffset(offset *string) {
	o.Offset = offset
}

// WithUserID adds the userID to the get groups params
func (o *GetGroupsParams) WithUserID(userID string) *GetGroupsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get groups params
func (o *GetGroupsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Limit != nil {

		// query param limit
		var qrLimit string
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := qrLimit
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Offset != nil {

		// query param offset
		var qrOffset string
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := qrOffset
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}