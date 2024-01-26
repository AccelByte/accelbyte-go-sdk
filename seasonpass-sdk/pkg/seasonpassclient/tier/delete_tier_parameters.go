// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tier

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewDeleteTierParams creates a new DeleteTierParams object
// with the default values initialized.
func NewDeleteTierParams() *DeleteTierParams {
	var ()
	return &DeleteTierParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteTierParamsWithTimeout creates a new DeleteTierParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteTierParamsWithTimeout(timeout time.Duration) *DeleteTierParams {
	var ()
	return &DeleteTierParams{

		timeout: timeout,
	}
}

// NewDeleteTierParamsWithContext creates a new DeleteTierParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteTierParamsWithContext(ctx context.Context) *DeleteTierParams {
	var ()
	return &DeleteTierParams{

		Context: ctx,
	}
}

// NewDeleteTierParamsWithHTTPClient creates a new DeleteTierParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteTierParamsWithHTTPClient(client *http.Client) *DeleteTierParams {
	var ()
	return &DeleteTierParams{
		HTTPClient: client,
	}
}

/*DeleteTierParams contains all the parameters to send to the API endpoint
for the delete tier operation typically these are written to a http.Request
*/
type DeleteTierParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string
	/*Namespace
	  Namespace

	*/
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

// WithTimeout adds the timeout to the delete tier params
func (o *DeleteTierParams) WithTimeout(timeout time.Duration) *DeleteTierParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete tier params
func (o *DeleteTierParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete tier params
func (o *DeleteTierParams) WithContext(ctx context.Context) *DeleteTierParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete tier params
func (o *DeleteTierParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete tier params
func (o *DeleteTierParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete tier params
func (o *DeleteTierParams) WithHTTPClient(client *http.Client) *DeleteTierParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete tier params
func (o *DeleteTierParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete tier params
func (o *DeleteTierParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteTierParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the delete tier params
func (o *DeleteTierParams) WithID(idVar string) *DeleteTierParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the delete tier params
func (o *DeleteTierParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the delete tier params
func (o *DeleteTierParams) WithNamespace(namespace string) *DeleteTierParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete tier params
func (o *DeleteTierParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSeasonID adds the seasonID to the delete tier params
func (o *DeleteTierParams) WithSeasonID(seasonID string) *DeleteTierParams {
	o.SetSeasonID(seasonID)
	return o
}

// SetSeasonID adds the seasonId to the delete tier params
func (o *DeleteTierParams) SetSeasonID(seasonID string) {
	o.SeasonID = seasonID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteTierParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
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
