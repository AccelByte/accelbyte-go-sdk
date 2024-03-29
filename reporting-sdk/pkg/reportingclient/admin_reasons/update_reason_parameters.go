// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

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

// NewUpdateReasonParams creates a new UpdateReasonParams object
// with the default values initialized.
func NewUpdateReasonParams() *UpdateReasonParams {
	var ()
	return &UpdateReasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateReasonParamsWithTimeout creates a new UpdateReasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateReasonParamsWithTimeout(timeout time.Duration) *UpdateReasonParams {
	var ()
	return &UpdateReasonParams{

		timeout: timeout,
	}
}

// NewUpdateReasonParamsWithContext creates a new UpdateReasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateReasonParamsWithContext(ctx context.Context) *UpdateReasonParams {
	var ()
	return &UpdateReasonParams{

		Context: ctx,
	}
}

// NewUpdateReasonParamsWithHTTPClient creates a new UpdateReasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateReasonParamsWithHTTPClient(client *http.Client) *UpdateReasonParams {
	var ()
	return &UpdateReasonParams{
		HTTPClient: client,
	}
}

/*UpdateReasonParams contains all the parameters to send to the API endpoint
for the update reason operation typically these are written to a http.Request
*/
type UpdateReasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiCreateReasonRequest
	/*Namespace*/
	Namespace string
	/*ReasonID*/
	ReasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update reason params
func (o *UpdateReasonParams) WithTimeout(timeout time.Duration) *UpdateReasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update reason params
func (o *UpdateReasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update reason params
func (o *UpdateReasonParams) WithContext(ctx context.Context) *UpdateReasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update reason params
func (o *UpdateReasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update reason params
func (o *UpdateReasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update reason params
func (o *UpdateReasonParams) WithHTTPClient(client *http.Client) *UpdateReasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update reason params
func (o *UpdateReasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update reason params
func (o *UpdateReasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateReasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update reason params
func (o *UpdateReasonParams) WithBody(body *reportingclientmodels.RestapiCreateReasonRequest) *UpdateReasonParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update reason params
func (o *UpdateReasonParams) SetBody(body *reportingclientmodels.RestapiCreateReasonRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update reason params
func (o *UpdateReasonParams) WithNamespace(namespace string) *UpdateReasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update reason params
func (o *UpdateReasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithReasonID adds the reasonID to the update reason params
func (o *UpdateReasonParams) WithReasonID(reasonID string) *UpdateReasonParams {
	o.SetReasonID(reasonID)
	return o
}

// SetReasonID adds the reasonId to the update reason params
func (o *UpdateReasonParams) SetReasonID(reasonID string) {
	o.ReasonID = reasonID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateReasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param reasonId
	if err := r.SetPathParam("reasonId", o.ReasonID); err != nil {
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
