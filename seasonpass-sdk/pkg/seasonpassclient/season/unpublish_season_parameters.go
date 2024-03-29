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
	"github.com/go-openapi/swag"
)

// NewUnpublishSeasonParams creates a new UnpublishSeasonParams object
// with the default values initialized.
func NewUnpublishSeasonParams() *UnpublishSeasonParams {
	var (
		forceDefault = bool(false)
	)
	return &UnpublishSeasonParams{
		Force: &forceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewUnpublishSeasonParamsWithTimeout creates a new UnpublishSeasonParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnpublishSeasonParamsWithTimeout(timeout time.Duration) *UnpublishSeasonParams {
	var (
		forceDefault = bool(false)
	)
	return &UnpublishSeasonParams{
		Force: &forceDefault,

		timeout: timeout,
	}
}

// NewUnpublishSeasonParamsWithContext creates a new UnpublishSeasonParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnpublishSeasonParamsWithContext(ctx context.Context) *UnpublishSeasonParams {
	var (
		forceDefault = bool(false)
	)
	return &UnpublishSeasonParams{
		Force: &forceDefault,

		Context: ctx,
	}
}

// NewUnpublishSeasonParamsWithHTTPClient creates a new UnpublishSeasonParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnpublishSeasonParamsWithHTTPClient(client *http.Client) *UnpublishSeasonParams {
	var (
		forceDefault = bool(false)
	)
	return &UnpublishSeasonParams{
		Force:      &forceDefault,
		HTTPClient: client,
	}
}

/*UnpublishSeasonParams contains all the parameters to send to the API endpoint
for the unpublish season operation typically these are written to a http.Request
*/
type UnpublishSeasonParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SeasonID*/
	SeasonID string
	/*Force*/
	Force *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the unpublish season params
func (o *UnpublishSeasonParams) WithTimeout(timeout time.Duration) *UnpublishSeasonParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the unpublish season params
func (o *UnpublishSeasonParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the unpublish season params
func (o *UnpublishSeasonParams) WithContext(ctx context.Context) *UnpublishSeasonParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the unpublish season params
func (o *UnpublishSeasonParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the unpublish season params
func (o *UnpublishSeasonParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the unpublish season params
func (o *UnpublishSeasonParams) WithHTTPClient(client *http.Client) *UnpublishSeasonParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the unpublish season params
func (o *UnpublishSeasonParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the unpublish season params
func (o *UnpublishSeasonParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UnpublishSeasonParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the unpublish season params
func (o *UnpublishSeasonParams) WithNamespace(namespace string) *UnpublishSeasonParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the unpublish season params
func (o *UnpublishSeasonParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the unpublish season params
func (o *UnpublishSeasonParams) WithSeasonID(seasonID string) *UnpublishSeasonParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the unpublish season params
func (o *UnpublishSeasonParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WithForce adds the force to the unpublish season params
func (o *UnpublishSeasonParams) WithForce(force *bool) *UnpublishSeasonParams {
	o.SetForce(force)
	return o
}

// SetForce adds the force to the unpublish season params
func (o *UnpublishSeasonParams) SetForce(force *bool) {
	o.Force = force
}

// WriteToRequest writes these params to a swagger request
func (o *UnpublishSeasonParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param seasonId
	if err := r.SetPathParam("seasonId", o.SeasonID); err != nil {
		return err
	}

	if o.Force != nil {

		// query param force
		var qrForce bool
		if o.Force != nil {
			qrForce = *o.Force
		}
		qForce := swag.FormatBool(qrForce)
		if qForce != "" {
			if err := r.SetQueryParam("force", qForce); err != nil {
				return err
			}
		}

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
