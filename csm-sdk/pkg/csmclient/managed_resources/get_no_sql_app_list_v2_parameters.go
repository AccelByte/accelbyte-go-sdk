// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package managed_resources

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

// NewGetNoSQLAppListV2Params creates a new GetNoSQLAppListV2Params object
// with the default values initialized.
func NewGetNoSQLAppListV2Params() *GetNoSQLAppListV2Params {
	var ()
	return &GetNoSQLAppListV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetNoSQLAppListV2ParamsWithTimeout creates a new GetNoSQLAppListV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetNoSQLAppListV2ParamsWithTimeout(timeout time.Duration) *GetNoSQLAppListV2Params {
	var ()
	return &GetNoSQLAppListV2Params{

		timeout: timeout,
	}
}

// NewGetNoSQLAppListV2ParamsWithContext creates a new GetNoSQLAppListV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetNoSQLAppListV2ParamsWithContext(ctx context.Context) *GetNoSQLAppListV2Params {
	var ()
	return &GetNoSQLAppListV2Params{

		Context: ctx,
	}
}

// NewGetNoSQLAppListV2ParamsWithHTTPClient creates a new GetNoSQLAppListV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetNoSQLAppListV2ParamsWithHTTPClient(client *http.Client) *GetNoSQLAppListV2Params {
	var ()
	return &GetNoSQLAppListV2Params{
		HTTPClient: client,
	}
}

/*GetNoSQLAppListV2Params contains all the parameters to send to the API endpoint
for the get no sql app list v2 operation typically these are written to a http.Request
*/
type GetNoSQLAppListV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ResourceID
	  Resource ID

	*/
	ResourceID string
	/*StudioName
	  Studio Name

	*/
	StudioName string
	/*AppName
	  App Name

	*/
	AppName *string
	/*Limit
	  Limit for pagination

	*/
	Limit *int64
	/*Namespace
	  Game Name

	*/
	Namespace *string
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

// WithTimeout adds the timeout to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithTimeout(timeout time.Duration) *GetNoSQLAppListV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithContext(ctx context.Context) *GetNoSQLAppListV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithHTTPClient(client *http.Client) *GetNoSQLAppListV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetNoSQLAppListV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithResourceID adds the resourceID to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithResourceID(resourceID string) *GetNoSQLAppListV2Params {
	o.SetResourceID(resourceID)
	return o
}

// SetResourceID adds the resourceId to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetResourceID(resourceID string) {
	o.ResourceID = resourceID
}

// WithStudioName adds the studioName to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithStudioName(studioName string) *GetNoSQLAppListV2Params {
	o.SetStudioName(studioName)
	return o
}

// SetStudioName adds the studioName to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetStudioName(studioName string) {
	o.StudioName = studioName
}

// WithAppName adds the appName to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithAppName(appName *string) *GetNoSQLAppListV2Params {
	o.SetAppName(appName)
	return o
}

// SetAppName adds the appName to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetAppName(appName *string) {
	o.AppName = appName
}

// WithLimit adds the limit to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithLimit(limit *int64) *GetNoSQLAppListV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithNamespace(namespace *string) *GetNoSQLAppListV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetNamespace(namespace *string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) WithOffset(offset *int64) *GetNoSQLAppListV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the get no sql app list v2 params
func (o *GetNoSQLAppListV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *GetNoSQLAppListV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param resourceId
	if err := r.SetPathParam("resourceId", o.ResourceID); err != nil {
		return err
	}

	// path param studioName
	if err := r.SetPathParam("studioName", o.StudioName); err != nil {
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

	if o.Namespace != nil {

		// query param namespace
		var qrNamespace string
		if o.Namespace != nil {
			qrNamespace = *o.Namespace
		}
		qNamespace := qrNamespace
		if qNamespace != "" {
			if err := r.SetQueryParam("namespace", qNamespace); err != nil {
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
