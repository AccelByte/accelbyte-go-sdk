// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources_sql

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

// NewDeleteSQLDatabaseV2Params creates a new DeleteSQLDatabaseV2Params object
// with the default values initialized.
func NewDeleteSQLDatabaseV2Params() *DeleteSQLDatabaseV2Params {
	var ()
	return &DeleteSQLDatabaseV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSQLDatabaseV2ParamsWithTimeout creates a new DeleteSQLDatabaseV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSQLDatabaseV2ParamsWithTimeout(timeout time.Duration) *DeleteSQLDatabaseV2Params {
	var ()
	return &DeleteSQLDatabaseV2Params{

		timeout: timeout,
	}
}

// NewDeleteSQLDatabaseV2ParamsWithContext creates a new DeleteSQLDatabaseV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSQLDatabaseV2ParamsWithContext(ctx context.Context) *DeleteSQLDatabaseV2Params {
	var ()
	return &DeleteSQLDatabaseV2Params{

		Context: ctx,
	}
}

// NewDeleteSQLDatabaseV2ParamsWithHTTPClient creates a new DeleteSQLDatabaseV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSQLDatabaseV2ParamsWithHTTPClient(client *http.Client) *DeleteSQLDatabaseV2Params {
	var ()
	return &DeleteSQLDatabaseV2Params{
		HTTPClient: client,
	}
}

/*DeleteSQLDatabaseV2Params contains all the parameters to send to the API endpoint
for the delete sql database v2 operation typically these are written to a http.Request
*/
type DeleteSQLDatabaseV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Name

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) WithTimeout(timeout time.Duration) *DeleteSQLDatabaseV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) WithContext(ctx context.Context) *DeleteSQLDatabaseV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) WithHTTPClient(client *http.Client) *DeleteSQLDatabaseV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSQLDatabaseV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) WithApp(app string) *DeleteSQLDatabaseV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) WithNamespace(namespace string) *DeleteSQLDatabaseV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete sql database v2 params
func (o *DeleteSQLDatabaseV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSQLDatabaseV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
