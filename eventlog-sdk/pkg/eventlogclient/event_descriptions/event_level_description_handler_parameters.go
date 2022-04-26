// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package event_descriptions

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

// NewEventLevelDescriptionHandlerParams creates a new EventLevelDescriptionHandlerParams object
// with the default values initialized.
func NewEventLevelDescriptionHandlerParams() *EventLevelDescriptionHandlerParams {

	return &EventLevelDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEventLevelDescriptionHandlerParamsWithTimeout creates a new EventLevelDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEventLevelDescriptionHandlerParamsWithTimeout(timeout time.Duration) *EventLevelDescriptionHandlerParams {

	return &EventLevelDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewEventLevelDescriptionHandlerParamsWithContext creates a new EventLevelDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewEventLevelDescriptionHandlerParamsWithContext(ctx context.Context) *EventLevelDescriptionHandlerParams {

	return &EventLevelDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewEventLevelDescriptionHandlerParamsWithHTTPClient creates a new EventLevelDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEventLevelDescriptionHandlerParamsWithHTTPClient(client *http.Client) *EventLevelDescriptionHandlerParams {

	return &EventLevelDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*EventLevelDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the event level description handler operation typically these are written to a http.Request
*/
type EventLevelDescriptionHandlerParams struct {
	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the event level description handler params
func (o *EventLevelDescriptionHandlerParams) WithTimeout(timeout time.Duration) *EventLevelDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the event level description handler params
func (o *EventLevelDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the event level description handler params
func (o *EventLevelDescriptionHandlerParams) WithContext(ctx context.Context) *EventLevelDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the event level description handler params
func (o *EventLevelDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the event level description handler params
func (o *EventLevelDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the event level description handler params
func (o *EventLevelDescriptionHandlerParams) WithHTTPClient(client *http.Client) *EventLevelDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the event level description handler params
func (o *EventLevelDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WriteToRequest writes these params to a swagger request
func (o *EventLevelDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
