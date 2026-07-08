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
	"github.com/go-openapi/swag"
)

// NewGetSQLAppListV2Params creates a new GetSQLAppListV2Params object
// with the default values initialized.
func NewGetSQLAppListV2Params() *GetSQLAppListV2Params {
	var ()
	return &GetSQLAppListV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSQLAppListV2ParamsWithTimeout creates a new GetSQLAppListV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSQLAppListV2ParamsWithTimeout(timeout time.Duration) *GetSQLAppListV2Params {
	var ()
	return &GetSQLAppListV2Params{

		timeout: timeout,
	}
}

// NewGetSQLAppListV2ParamsWithContext creates a new GetSQLAppListV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetSQLAppListV2ParamsWithContext(ctx context.Context) *GetSQLAppListV2Params {
	var ()
	return &GetSQLAppListV2Params{

		Context: ctx,
	}
}

// NewGetSQLAppListV2ParamsWithHTTPClient creates a new GetSQLAppListV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSQLAppListV2ParamsWithHTTPClient(client *http.Client) *GetSQLAppListV2Params {
	var ()
	return &GetSQLAppListV2Params{
		HTTPClient: client,
	}
}

/*GetSQLAppListV2Params contains all the parameters to send to the API endpoint
for the get sql app list v2 operation typically these are written to a http.Request
*/
type GetSQLAppListV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Studio Name

	*/
	Namespace string
	/*ResourceID
	  Resource ID

	*/
	ResourceID string
	/*AppName
	  App Name

	*/
	AppName *string
	/*GameNamespace
	  Game Namespace

	*/
	GameNamespace *string
	/*Limit
	  Limit for pagination

	*/
	Limit *int64
	/*Offset
	  Offset for pagination

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithTimeout(timeout time.Duration) *GetSQLAppListV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithContext(ctx context.Context) *GetSQLAppListV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithHTTPClient(client *http.Client) *GetSQLAppListV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetSQLAppListV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithNamespace(namespace string) *GetSQLAppListV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithResourceID adds the resourceID to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithResourceID(resourceID string) *GetSQLAppListV2Params {
	o.SetResourceID(resourceID)
	return o
}

// SetResourceID adds the resourceId to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetResourceID(resourceID string) {
	o.ResourceID = resourceID
}

// WithAppName adds the appName to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithAppName(appName *string) *GetSQLAppListV2Params {
	o.SetAppName(appName)
	return o
}

// SetAppName adds the appName to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetAppName(appName *string) {
	o.AppName = appName
}

// WithGameNamespace adds the gameNamespace to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithGameNamespace(gameNamespace *string) *GetSQLAppListV2Params {
	o.SetGameNamespace(gameNamespace)
	return o
}

// SetGameNamespace adds the gameNamespace to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetGameNamespace(gameNamespace *string) {
	o.GameNamespace = gameNamespace
}

// WithLimit adds the limit to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithLimit(limit *int64) *GetSQLAppListV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the get sql app list v2 params
func (o *GetSQLAppListV2Params) WithOffset(offset *int64) *GetSQLAppListV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get sql app list v2 params
func (o *GetSQLAppListV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetSQLAppListV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param resourceId
	if err := r.SetPathParam("resourceId", o.ResourceID); err != nil {
		return err
	}

	if o.AppName != nil {

		// query param appName
		var qrAppName string
		if o.AppName != nil {
			qrAppName = *o.AppName
		}
		qAppName := qrAppName
		if qAppName != "" {
			if err := r.SetQueryParam("appName", qAppName); err != nil {
				return err
			}
		}

	}

	if o.GameNamespace != nil {

		// query param gameNamespace
		var qrGameNamespace string
		if o.GameNamespace != nil {
			qrGameNamespace = *o.GameNamespace
		}
		qGameNamespace := qrGameNamespace
		if qGameNamespace != "" {
			if err := r.SetQueryParam("gameNamespace", qGameNamespace); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
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
