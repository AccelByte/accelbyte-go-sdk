// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package season

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/seasonpass-sdk/pkg/seasonpassclientmodels"
)

// NewUpdateSeasonParams creates a new UpdateSeasonParams object
// with the default values initialized.
func NewUpdateSeasonParams() *UpdateSeasonParams {
	var ()
	return &UpdateSeasonParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateSeasonParamsWithTimeout creates a new UpdateSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateSeasonParamsWithTimeout(timeout time.Duration) *UpdateSeasonParams {
	var ()
	return &UpdateSeasonParams{

		timeout: timeout,
	}
}

// NewUpdateSeasonParamsWithContext creates a new UpdateSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateSeasonParamsWithContext(ctx context.Context) *UpdateSeasonParams {
	var ()
	return &UpdateSeasonParams{

		Context: ctx,
	}
}

// NewUpdateSeasonParamsWithHTTPClient creates a new UpdateSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateSeasonParamsWithHTTPClient(client *http.Client) *UpdateSeasonParams {
	var ()
	return &UpdateSeasonParams{
		HTTPClient: client,
	}
}

/*UpdateSeasonParams contains all the parameters to send to the API endpoint
for the update season operation typically these are written to a http.Request
*/
type UpdateSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *seasonpassclientmodels.SeasonUpdate
	/*Namespace*/
	Namespace string
	/*SeasonID*/
	SeasonID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the update season params
func (o *UpdateSeasonParams) WithTimeout(timeout time.Duration) *UpdateSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update season params
func (o *UpdateSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update season params
func (o *UpdateSeasonParams) WithContext(ctx context.Context) *UpdateSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update season params
func (o *UpdateSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update season params
func (o *UpdateSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update season params
func (o *UpdateSeasonParams) WithHTTPClient(client *http.Client) *UpdateSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update season params
func (o *UpdateSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update season params
func (o *UpdateSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update season params
func (o *UpdateSeasonParams) WithBody(body *seasonpassclientmodels.SeasonUpdate) *UpdateSeasonParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update season params
func (o *UpdateSeasonParams) SetBody(body *seasonpassclientmodels.SeasonUpdate) {
	o.Body = body
}

// WithNamespace adds the namespace to the update season params
func (o *UpdateSeasonParams) WithNamespace(namespace string) *UpdateSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update season params
func (o *UpdateSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the update season params
func (o *UpdateSeasonParams) WithSeasonID(seasonID string) *UpdateSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the update season params
func (o *UpdateSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
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
