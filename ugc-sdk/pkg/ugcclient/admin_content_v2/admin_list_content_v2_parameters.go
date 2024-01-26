// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewAdminListContentV2Params creates a new AdminListContentV2Params object
// with the default values initialized.
func NewAdminListContentV2Params() *AdminListContentV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListContentV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListContentV2ParamsWithTimeout creates a new AdminListContentV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListContentV2ParamsWithTimeout(timeout time.Duration) *AdminListContentV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListContentV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewAdminListContentV2ParamsWithContext creates a new AdminListContentV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListContentV2ParamsWithContext(ctx context.Context) *AdminListContentV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListContentV2Params{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewAdminListContentV2ParamsWithHTTPClient creates a new AdminListContentV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListContentV2ParamsWithHTTPClient(client *http.Client) *AdminListContentV2Params {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &AdminListContentV2Params{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*AdminListContentV2Params contains all the parameters to send to the API endpoint
for the admin list content v2 operation typically these are written to a http.Request
*/
type AdminListContentV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*IsOfficial
	  filter by is official

	*/
	IsOfficial *bool
	/*Limit
	  number of content per page

	*/
	Limit *int64
	/*Name
	  filter by content name

	*/
	Name *string
	/*Offset
	  the offset number to retrieve

	*/
	Offset *int64
	/*SortBy
	    default value: createdTime:desc.

	available value:
	<ul>
	<li>createdTime, createdTime:desc, createdTime:asc</li>
	<li>download, download:desc, download:asc</li>
	<li>like, like:desc, like:asc</li>
	<li>name, name:desc, name:asc</li>
	<li>updatedTime, updatedTime:desc, updatedTime:asc</li>
	</ul>

	*/
	SortBy *string
	/*SubType
	  filter by content subType

	*/
	SubType *string
	/*Tags
	  content tag

	*/
	Tags []string
	/*Type
	  filter by content type

	*/
	Type *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin list content v2 params
func (o *AdminListContentV2Params) WithTimeout(timeout time.Duration) *AdminListContentV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list content v2 params
func (o *AdminListContentV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list content v2 params
func (o *AdminListContentV2Params) WithContext(ctx context.Context) *AdminListContentV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list content v2 params
func (o *AdminListContentV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list content v2 params
func (o *AdminListContentV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list content v2 params
func (o *AdminListContentV2Params) WithHTTPClient(client *http.Client) *AdminListContentV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list content v2 params
func (o *AdminListContentV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list content v2 params
func (o *AdminListContentV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminListContentV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin list content v2 params
func (o *AdminListContentV2Params) WithNamespace(namespace string) *AdminListContentV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list content v2 params
func (o *AdminListContentV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIsOfficial adds the isOfficial to the admin list content v2 params
func (o *AdminListContentV2Params) WithIsOfficial(isOfficial *bool) *AdminListContentV2Params {
	o.SetIsOfficial(isOfficial)
	return o
}

// SetIsOfficial adds the isOfficial to the admin list content v2 params
func (o *AdminListContentV2Params) SetIsOfficial(isOfficial *bool) {
	o.IsOfficial = isOfficial
}

// WithLimit adds the limit to the admin list content v2 params
func (o *AdminListContentV2Params) WithLimit(limit *int64) *AdminListContentV2Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list content v2 params
func (o *AdminListContentV2Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the admin list content v2 params
func (o *AdminListContentV2Params) WithName(name *string) *AdminListContentV2Params {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin list content v2 params
func (o *AdminListContentV2Params) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the admin list content v2 params
func (o *AdminListContentV2Params) WithOffset(offset *int64) *AdminListContentV2Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list content v2 params
func (o *AdminListContentV2Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list content v2 params
func (o *AdminListContentV2Params) WithSortBy(sortBy *string) *AdminListContentV2Params {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list content v2 params
func (o *AdminListContentV2Params) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithSubType adds the subType to the admin list content v2 params
func (o *AdminListContentV2Params) WithSubType(subType *string) *AdminListContentV2Params {
	o.SetSubType(subType)
	return o
}

// SetSubType adds the subType to the admin list content v2 params
func (o *AdminListContentV2Params) SetSubType(subType *string) {
	o.SubType = subType
}

// WithTags adds the tags to the admin list content v2 params
func (o *AdminListContentV2Params) WithTags(tags []string) *AdminListContentV2Params {
	o.SetTags(tags)
	return o
}

// SetTags adds the tags to the admin list content v2 params
func (o *AdminListContentV2Params) SetTags(tags []string) {
	o.Tags = tags
}

// WithType adds the typeVar to the admin list content v2 params
func (o *AdminListContentV2Params) WithType(typeVar *string) *AdminListContentV2Params {
	o.SetType(typeVar)
	return o
}

// SetType adds the type to the admin list content v2 params
func (o *AdminListContentV2Params) SetType(typeVar *string) {
	o.Type = typeVar
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListContentV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.IsOfficial != nil {

		// query param isOfficial
		var qrIsOfficial bool
		if o.IsOfficial != nil {
			qrIsOfficial = *o.IsOfficial
		}
		qIsOfficial := swag.FormatBool(qrIsOfficial)
		if qIsOfficial != "" {
			if err := r.SetQueryParam("isOfficial", qIsOfficial); err != nil {
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

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
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

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	if o.SubType != nil {

		// query param subType
		var qrSubType string
		if o.SubType != nil {
			qrSubType = *o.SubType
		}
		qSubType := qrSubType
		if qSubType != "" {
			if err := r.SetQueryParam("subType", qSubType); err != nil {
				return err
			}
		}

	}

	valuesTags := o.Tags

	joinedTags := swag.JoinByFormat(valuesTags, "csv")
	// query array param tags
	if err := r.SetQueryParam("tags", joinedTags...); err != nil {
		return err
	}

	if o.Type != nil {

		// query param type
		var qrType string
		if o.Type != nil {
			qrType = *o.Type
		}
		qType := qrType
		if qType != "" {
			if err := r.SetQueryParam("type", qType); err != nil {
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
