// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_tickets

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewUpdateTicketResolutionsParams creates a new UpdateTicketResolutionsParams object
// with the default values initialized.
func NewUpdateTicketResolutionsParams() *UpdateTicketResolutionsParams {
	var ()
	return &UpdateTicketResolutionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateTicketResolutionsParamsWithTimeout creates a new UpdateTicketResolutionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateTicketResolutionsParamsWithTimeout(timeout time.Duration) *UpdateTicketResolutionsParams {
	var ()
	return &UpdateTicketResolutionsParams{

		timeout: timeout,
	}
}

// NewUpdateTicketResolutionsParamsWithContext creates a new UpdateTicketResolutionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateTicketResolutionsParamsWithContext(ctx context.Context) *UpdateTicketResolutionsParams {
	var ()
	return &UpdateTicketResolutionsParams{

		Context: ctx,
	}
}

// NewUpdateTicketResolutionsParamsWithHTTPClient creates a new UpdateTicketResolutionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateTicketResolutionsParamsWithHTTPClient(client *http.Client) *UpdateTicketResolutionsParams {
	var ()
	return &UpdateTicketResolutionsParams{
		HTTPClient: client,
	}
}

/*UpdateTicketResolutionsParams contains all the parameters to send to the API endpoint
for the update ticket resolutions operation typically these are written to a http.Request
*/
type UpdateTicketResolutionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiUpdateTicketResolutionsRequest
	/*Namespace*/
	Namespace string
	/*TicketID*/
	TicketID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) WithTimeout(timeout time.Duration) *UpdateTicketResolutionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) WithContext(ctx context.Context) *UpdateTicketResolutionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) WithHTTPClient(client *http.Client) *UpdateTicketResolutionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateTicketResolutionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) WithBody(body *reportingclientmodels.RestapiUpdateTicketResolutionsRequest) *UpdateTicketResolutionsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetBody(body *reportingclientmodels.RestapiUpdateTicketResolutionsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) WithNamespace(namespace string) *UpdateTicketResolutionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTicketID adds the ticketID to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) WithTicketID(ticketID string) *UpdateTicketResolutionsParams {
	o.SetTicketID(ticketID)
	return o
}

// SetTicketID adds the ticketId to the update ticket resolutions params
func (o *UpdateTicketResolutionsParams) SetTicketID(ticketID string) {
	o.TicketID = ticketID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateTicketResolutionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ticketId
	if err := r.SetPathParam("ticketId", o.TicketID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
